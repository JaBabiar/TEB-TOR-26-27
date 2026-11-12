# ========================================
# 🐦 PIGEON AUTOMATOR v2.5 - MANUAL CONTROL + SMART AUTOBUY
# Complete overhaul with manual start/stop control & optimized shopping algorithms
# ========================================

from playwright.sync_api import sync_playwright, TimeoutError as PlaywrightTimeout
import time
import sys


class PigeonBot:
    """Inteligentny bot z kontrolą ręczną + zoptymalizowanym autobuy"""

    def __init__(self, username="QwenAI26", password="KukuKuku_2024"):
        self.username = username
        self.password = password

        # Ultra-fast clicking - można zmienić dynamicznie!
        self.click_interval = 0.08  # ~12 clicks/s (domyślny)
        self.max_clicks_per_cycle = 30
        self.is_running = True  # Flaga kontroli ręcznej

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
        register_visible = False
        account_btn_disabled = False

        try:
            reg_btn = page.locator("button#registerButton")
            if reg_btn.is_visible():
                register_visible = True

            acc_btn = page.locator("button[id='accountOpen']")
            account_disabled = acc_btn.get_attribute("disabled")
            if account_disabled:
                account_btn_disabled = True

        except Exception as e:
            print(f"  ⚠️ Login state check error: {str(e)[:40]}")

        return not register_visible or account_btn_disabled

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

            page.click("button#loginButton", timeout=5000)
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
        """Pełny proces z MANUAL CONTROL + SMART AUTO-BUY"""

        with sync_playwright() as p:
            browser = p.chromium.launch(headless=False)
            context = browser.new_context(user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64)")
            page = context.new_page()

            try:
                print("=" * 60)
                print("🐦 Pigeon Bot v2.5 - CONTROLLABLE & OPTIMIZED")
                print("=" * 60)

                # --- LOGIN/REGISTER ---
                print("\n🔑 Step 1/4: Smart Login...")
                page.goto("https://pigeonclicker.lol/", wait_until="networkidle")
                time.sleep(1)
                page.wait_for_selector(".bird-button", timeout=10000)

                if not self.smart_login(page):
                    print("  ⚠️ Login verification failed, but continuing...")
                time.sleep(2)

                # --- WAIT FOR GAME TO LOAD ---
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

                # --- CONTINUOUS GAME LOOP Z MANUAL CONTROL ---
                print("\n🎮 Step 3/4: STARTING CONTINUOUS CLICKING!")
                print("   🔄 Non-stop clicking + SMART AUTO-BUYING...")
                print("   💡 UŻYJ 'START' aby włączyć klikanie, 'STOP' aby zatrzymać!\n")

                click_count = 0
                cycle = 0

                try:
                    while self.is_running:  # 🔄 MANUAL CONTROL LOOP!

                        # Check if user wants to stop
                        print("\n" + "=" * 60)
                        choice = input("   [START] aby kliknąć, 'STOP' aby zatrzymać: ").strip().upper()

                        if choice == "STOP":
                            print("⏸️  Klikanie zatrzymane...")
                            self.is_running = False
                            continue

                        elif choice == "START":
                            print("▶️  Klikanie wznowione!")

                        else:
                            # Default to clicking if no input
                            pass

                        try:
                            # --- CHECK BUTTON STATE ---
                            button_enabled = page.evaluate("""() => {
                                const btn = document.getElementById('birdButton');
                                return btn !== null && !btn.disabled;
                            }""")

                            if not button_enabled:
                                time.sleep(0.05)
                                continue

                            # --- CLICK! ---
                            page.click("#birdButton")
                            click_count += 1

                            # Ultra-fast interval - klikaj szybko!
                            time.sleep(0.005)

                            # --- SMART AUTO-BUY CHECK (co ~30 clicks) ---
                            if click_count > 0 and click_count % self.max_clicks_per_cycle == 0:
                                cycle += 1
                                print(f"\n   🛒 [{cycle}] Cycle {click_count} - Smart Auto-Buy Scan...")

                                # Get current balance from UI (most reliable)
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
                            time.sleep(0.1)  # Brief wait on timeout
                        except Exception as e:
                            error_type = type(e).__name__
                            if "Disabled" in str(e) or "disabled" in str(e):
                                time.sleep(0.5)
                            elif "TimeoutError" in error_type or "ElementHandle" in error_type:
                                pass  # Continue silently
                            else:
                                print(f"   ⚠️ {error_type}: {str(e)[:50]}")
                                time.sleep(1)

                except KeyboardInterrupt:
                    print("\n\n⏸️  User stopped automation")
                    self.is_running = False

                # --- FINAL SHOP OPTIMIZATION ---
                print("\n🛒 Step 4/4: Final shop optimization...")
                self.full_shop_optimization(page)

                # --- DAILY GOALS ---
                print("\n📅 Checking daily goals...")
                self.check_daily_goals(page)

                print("\n" + "=" * 60)
                print("✅ Continuous automation completed!")
                print("=" * 60)

            finally:
                browser.close()

    def get_shop_items(self, page):
        """Get all shop items with their details"""
        items = []
        try:
            item_elements = page.query_selector_all("[data-buy]")

            for item_elem in item_elements:
                item_data = {
                    'index': int(item_elem.get_attribute("data-buy")),
                    'element': item_elem,
                    'owned': 0,
                    'price': None,
                    'can_afford': False,
                }

                # Get owned count
                try:
                    owned_text = item_elem.locator(".shop-owned").inner_text()
                    item_data['owned'] = self.parse_balance(owned_text.strip().replace("+", ""))
                except:
                    pass

                # Try to get price from aria-label or text
                try:
                    aria_label = item_elem.get_attribute("aria-label")
                    inner_text = item_elem.inner_text()

                    # Extract number from price strings like "30 pigeons"
                    if "$" in str(aria_label) or "pigeon" in str(inner_text):
                        import re
                        price_match = re.search(r'\d+', str(aria_label))
                        if price_match:
                            item_data['price'] = int(price_match.group())
                except:
                    pass

                items.append(item_data)

        except Exception as e:
            print(f"  ⚠️ Error getting shop items: {str(e)[:50]}")

        return items

    def smart_auto_buy(self, page, click_count, balance):
        """IMPROVED SMART AUTO-BUY - strategic purchasing"""

        if balance < 100:
            print("   ℹ️ Balance too low for auto-buy!")
            return

        print(f"   💰 Balance: {balance} | Scanning shop...")

        try:
            items = self.get_shop_items(page)
            if not items:
                print("   ℹ️ No shop items found!")
                return

            # Sort items by price (cheapest first for efficiency)
            affordable_items = [item for item in items if item['price'] and item['price'] <= balance]

            if not affordable_items:
                print("   ⚠️ No affordable items found!")
                return

            # Calculate total cost of buying one of each affordable item
            total_cost = sum(item['price'] for item in affordable_items)

            # Buy as many sets as possible
            num_sets = balance // total_cost if total_cost > 0 else 0

            print(f"   📊 Strategy: Buying {min(1, num_sets)} set of all affordable items")

            for item_data in affordable_items[:min(1, num_sets)]:  # Buy one of each
                try:
                    item_idx = item_data['index']

                    # Check if still affordable (might have changed)
                    price_text = item_data['element'].inner_text()
                    if "Brak środków" in price_text or item_data['element'].is_disabled():
                        continue

                    # BUY IT!
                    page.evaluate(f"""async () => {{
                        const btn = document.querySelectorAll('[data-buy]')[{item_idx}];
                        if (!btn.disabled) await btn.click();
                        await new Promise(r => setTimeout(r, 150));
                    }}""")

                    print(f"   🛒 Bought item #{item_idx + 1}")

                except Exception as buy_err:
                    print(f"      ⚠️ Buy error for item #{item_idx + 1}: {str(buy_err)[:40]}")

            # If can't afford all, try to buy the single cheapest one multiple times
            if affordable_items:
                cheapest = min(affordable_items, key=lambda x: x['price'] if x['price'] else float('inf'))
                cheapest_idx = cheapest['index']

                # Try clicking if affordable
                try:
                    page.evaluate(f"""async () => {{
                        const btn = document.querySelectorAll('[data-buy]')[{cheapest_idx}];
                        if (!btn.disabled) await btn.click();
                        await new Promise(r => setTimeout(r, 100));
                    }}""")

                except Exception as max_err:
                    pass

        except Exception as e:
            print(f"   ⚠️ Auto-buy error: {str(e)[:50]}")

    def full_shop_optimization(self, page):
        """FULL SHOP OPTIMIZATION"""

        try:
            click_count_el = page.locator("#clickCount").first
            balance_str = click_count_el.inner_text()
            balance = self.parse_balance(balance_str)

            if balance < 500:
                print(f"  ℹ️ Balance too low ({balance}), skipping optimization...")
                return

            items = self.get_shop_items(page)

            # Sort by price ascending
            items_sorted = sorted(items, key=lambda x: (x['price'] is None, x['price'] or 0))

            for item in items_sorted:
                try:
                    item_idx = item['index']

                    # Check affordability first!
                    price_text = item['element'].inner_text()
                    if "Brak środków" in price_text or item['element'].is_disabled():
                        continue

                    # BUY ONLY AFFORDABLE ITEMS!
                    page.evaluate(f"""async () => {{
                        const btn = document.querySelectorAll('[data-buy]')[{item_idx}];
                        if (!btn.disabled) await btn.click();
                        await new Promise(r => setTimeout(r, 100));
                    }}""")

                except Exception as buy_err:
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

    # Parse command line arguments with sys
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