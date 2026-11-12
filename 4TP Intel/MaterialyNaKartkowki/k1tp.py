# ========================================
# 🐦 PIGEON AUTOMATOR v2.5 - FIXED SHOP BUYING
# Corrected shop item indexing + better error handling
# ========================================

from playwright.sync_api import sync_playwright, TimeoutError as PlaywrightTimeout
import time
import sys


class PigeonBot:
    """Inteligentny bot z naprawionym loginem i autobuy"""

    def __init__(self, username="QwenAI26", password="KukuKuku_2024"):
        self.username = username
        self.password = password
        self.click_interval = 0.08  # ~12 clicks/s
        self.max_clicks_per_cycle = 30

    def parse_balance(self, balance_text):
        """Parse balance from any text source"""
        if not balance_text or balance_text in ["—", "-", "Loading", "loading", "", None]:
            return 0
        try:
            clean = str(balance_text).replace(",", "").replace(" ", "").replace(".", "")
            val = float(clean)
            return max(0, val)
        except:
            return 0

    def check_login_state(self, page):
        """Check if we're logged in"""
        try:
            reg_btn = page.locator("button#registerButton")
            register_visible = reg_btn.is_visible()

            acc_btn = page.locator("button[id='accountOpen']")
            account_disabled = acc_btn.get_attribute("disabled", default=False)

            return not register_visible or account_disabled
        except Exception as e:
            print(f"  ⚠️ Login state check error: {str(e)[:40]}")
            return False

    def smart_login(self, page):
        """Smart login with fallback strategies"""

        print("\n🔑 Step 1/4: Smart Login...")

        try:
            if self.check_login_state(page):
                print("  → Already logged in, proceeding to game...")
                return True

            page.click("#accountOpen", timeout=5000)
            page.wait_for_selector("input#username", timeout=5000)
            page.wait_for_selector("input#password", timeout=5000)

            print(f"  → Logging in as: {self.username}")
            page.fill("input#username", self.username, force=True)
            page.fill("input#password", self.password, force=True)
            page.click("button#registerButton", timeout=5000)
            print("  → Register button clicked")

            time.sleep(2)

            if self.check_login_state(page):
                print("  → Login successful!")
                return True

        except Exception as e:
            print(f"  ⚠️ Login attempt 1 failed: {type(e).__name__}: {str(e)[:50]}")

        try:
            print("  → Trying fallback login...")
            page.click("#accountClose", timeout=2000)
            time.sleep(1)

            if self.check_login_state(page):
                return True

        except Exception as e:
            print(f"  ⚠️ Fallback login failed: {type(e).__name__}: {str(e)[:50]}")

        try:
            if not page.locator("button#registerButton").is_visible():
                print("  → Assuming logged in anyway...")
                return True
        except Exception as e:
            print(f"  ⚠️ Last resort check failed: {str(e)[:40]}")

        print("  ⚠️ Could not verify login, proceeding with caution...")
        return False

    def run_automation(self):
        """Pełny proces z CONTINUOUS CLICKING + SMART AUTO-BUY"""

        with sync_playwright() as p:
            browser = p.chromium.launch(headless=False)
            context = browser.new_context(user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64)")
            page = context.new_page()

            try:
                print("=" * 60)
                print("🐦 Pigeon Bot v2.5 - FIXED SHOP BUYING")
                print("=" * 60)

                print("\n🔑 Step 1/4: Smart Login...")
                page.goto("https://pigeonclicker.lol/", wait_until="networkidle")
                time.sleep(1)
                page.wait_for_selector(".bird-button", timeout=10000)

                if not self.smart_login(page):
                    print("  ⚠️ Login verification failed, but continuing...")

                time.sleep(2)

                print("\n⏳ Step 2/4: Loading game elements...")
                page.wait_for_selector("#birdButton", timeout=10000)

                try:
                    btn = page.locator("#birdButton").first
                    if btn.is_disabled():
                        print("  ⚠️ Bird button disabled, waiting...")
                        time.sleep(3)
                except Exception as e:
                    print(f"  ⚠️ Button check error: {str(e)[:50]}")

                time.sleep(1.5)

                # --- CONTINUOUS GAME LOOP ---
                print("\n🎮 Step 3/4: STARTING CONTINUOUS CLICKING!")
                print("   🔄 Non-stop clicking + smart auto-buying...")

                click_count = 0
                cycle = 0

                try:
                    while True:
                        try:
                            # --- CHECK BUTTON STATE ---
                            button_enabled = page.evaluate("""() => {
                                const btn = document.getElementById('birdButton');
                                return btn !== null && !btn.disabled;
                            }""")

                            if not button_enabled:
                                time.sleep(0.05)
                                continue

                            # --- CONTINUOUS CLICKING (BEZ LIMITU!) ---
                            page.click("#birdButton")
                            click_count += 1
                            time.sleep(0.005)

                            # --- SMART AUTO-BUY CHECK (co ~30 clicks) ---
                            if click_count > 0 and click_count % self.max_clicks_per_cycle == 0:
                                cycle += 1
                                print(f"\n   🛒 [{cycle}] Cycle {click_count} - Smart Auto-Buy...")

                                try:
                                    click_count_el = page.locator("#clickCount").first
                                    balance_str = click_count_el.inner_text()
                                    balance = self.parse_balance(balance_str)
                                except Exception as e:
                                    print(f"      ⚠️ Balance read error: {str(e)[:40]}")
                                    balance = 0

                                if balance > 100:
                                    print(f"   💰 Current Balance: {balance}")
                                    self.smart_auto_buy(page, click_count, balance)

                            # --- PROGRESS REPORT (co 50 clicks) ---
                            if click_count % 50 == 0:
                                try:
                                    click_count_el = page.locator("#clickCount").first
                                    balance_str = click_count_el.inner_text()
                                    balance = self.parse_balance(balance_str)
                                    print(f"   📊 Click #{click_count} | Balance: {balance}")
                                except Exception as e:
                                    pass

                        except PlaywrightTimeout:
                            time.sleep(0.1)
                        except Exception as e:
                            error_type = type(e).__name__
                            if "Disabled" in str(e) or "disabled" in str(e):
                                time.sleep(0.5)
                            elif "TimeoutError" in error_type or "ElementHandle" in error_type:
                                pass
                            else:
                                print(f"   ⚠️ {error_type}: {str(e)[:50]}")
                                time.sleep(1)

                except KeyboardInterrupt:
                    print("\n\n⏸️  User stopped automation")

                # --- FINAL SHOP OPTIMIZATION ---
                print("\n🛒 Step 4/4: Final shop optimization...")
                self.full_shop_optimization(page)

                # --- DAILY GOALS ---
                print("\n📅 Checking daily goals...")
                self.check_daily_goals(page)

                print("\n" + "=" * 60)
                print("✅ Continuous automation running!")
                print("=" * 60)

            finally:
                browser.close()

    def smart_auto_buy(self, page, click_count, balance):
        """SMART AUTO-BUY - FIXED: use enumerate for correct array indexing!"""

        if balance < 100:
            return

        print(f"   💰 Balance: {balance} | Scanning shop...")

        try:
            # Get ALL shop items using query_selector_all
            all_shop_items = page.query_selector_all("[data-buy]")

            if not all_shop_items:
                print("   ℹ️ No shop items found!")
                return

            print(f"   ✅ Found {len(all_shop_items)} shop items")

            # CRITICAL FIX: Use enumerate() for correct array indexing!
            # item_idx is the CORRECT 0-based index into document.querySelectorAll('[data-buy]')
            for item_idx, item_elem in enumerate(all_shop_items):
                try:
                    # Get data-buy attribute (for logging)
                    data_buy = item_elem.get_attribute("data-buy") or f"#{item_idx + 1}"

                    # CRITICAL FIX: Use item_idx (from enumerate) NOT data_buy as array index!
                    # document.querySelectorAll('[data-buy]')[item_idx] will work correctly!

                    # Get owned count
                    owned_count = 0
                    try:
                        owned_text = item_elem.locator(".shop-owned").inner_text()
                        if owned_text and owned_text != "—":
                            owned_count = self.parse_balance(owned_text.strip().replace("+", ""))
                    except:
                        pass

                    # Skip if already owned
                    if owned_count > 0:
                        continue

                    # Check affordability
                    is_disabled = item_elem.is_disabled() or "Brak środków" in item_elem.inner_text()

                    if is_disabled:
                        continue

                    item_name = item_elem.get_attribute("title") or f"Item #{item_idx + 1}"
                    print(f"   🛒 Buying #{item_idx + 1}: {item_name}")

                    # Use CORRECT indexing: item_idx from enumerate!
                    try:
                        page.evaluate(f"""async () => {{
                            const btn = document.querySelectorAll('[data-buy]')[{item_idx}];
                            if (!btn.disabled) await btn.click();
                            await new Promise(r => setTimeout(r, 150));
                        }}""")
                        time.sleep(0.2)

                    except Exception as buy_err:
                        print(f"      ⚠️ Buy error for #{item_idx + 1}: {str(buy_err)[:40]}")

                except Exception as e:
                    print(f"   ⚠️ Item loop error at #{item_idx + 1}: {str(e)[:40]}")

        except Exception as e:
            print(f"   ⚠️ Auto-buy error: {str(e)[:50]}")

    def full_shop_optimization(self, page):
        """FULL SHOP OPTIMIZATION - use correct indexing!"""

        try:
            click_count_el = page.locator("#clickCount").first
            balance_str = click_count_el.inner_text()
            balance = self.parse_balance(balance_str)

            if balance < 500:
                print(f"  ℹ️ Balance too low ({balance}), skipping optimization...")
                return

            items = page.query_selector_all("[data-buy]")

            for item_idx, item in enumerate(items):  # ✅ CORRECT ENUMERATION!
                try:
                    data_buy = item.get_attribute("data-buy") or f"#{item_idx + 1}"

                    if "Brak środków" in item.inner_text() or item.is_disabled():
                        continue

                    print(f"  🛒 MAX BUY #{item_idx + 1}...")

                    try:
                        page.evaluate(f"""async () => {{
                            const btn = document.querySelectorAll('[data-buy]')[{item_idx}];
                            if (!btn.disabled) await btn.click();
                            await new Promise(r => setTimeout(r, 100));
                        }}""")

                    except Exception as e:
                        print(f"      ⚠️ Item #{item_idx + 1} buy failed: {str(e)[:40]}")

                except Exception as e:
                    pass

        except Exception as e:
            print(f"  ⚠️ Optimization error: {str(e)[:50]}")

    def check_daily_goals(self, page):
        """Check and claim daily goals"""

        try:
            daily_list = page.query_selector("#dailyList")
            if not daily_list:
                print("  ℹ️ No daily list found...")
                return

            for task in daily_list.query_selector_all(".goal:not(.done)"):
                reward_btn = task.query_selector("button[data-daily]")
                if reward_btn and not reward_btn.is_disabled():
                    print(f"  🎁 Claiming daily goal!")
                    try:
                        reward_btn.click()
                        time.sleep(0.3)
                    except Exception as e:
                        pass

        except Exception as e:
            print(f"  ⚠️ Daily goals error: {str(e)[:50]}")


def main():
    """Main entry point"""

    if len(sys.argv) < 2:
        username = "QwenAI26"
        password = "KukuKuku_2024"
    else:
        username = sys.argv[1]
        password = sys.argv[2] if len(sys.argv) > 2 else "KukuKuku_2024"

    print(f"\n🐦 Starting Pigeon Bot v2.5: {username}")
    print("=" * 60)

    bot = PigeonBot(username=username, password=password)

    try:
        bot.run_automation()
    except KeyboardInterrupt:
        print("\n⏸️  Automation paused")
    except Exception as e:
        print(f"\n❌ Error: {type(e).__name__}: {str(e)[:100]}")


if __name__ == "__main__":
    main()