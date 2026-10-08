-- ==========================================
-- 🌶️ Chilli Hub
-- แปลไทยโดย : บาฟัค
-- Version : Final (รวมทุกคำศัพท์ + Dynamic Text + แพตช์ V.4)
-- ==========================================

local GuiService = gethui and gethui() or game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")

-- ==========================================
-- 1. DICTIONARY
-- ==========================================

local dict = {

    -- 🌶️ เครดิตแปล
    ["Chilli Hub"] = "Chilli Hub • แปลโดย บาฟัค",

    -- 📌 เมนูหลัก
    ["Farm"] = "🚜 ฟาร์ม",
    ["Player"] = "🏃 ตัวละคร",
    ["Egg Finder"] = "🔎 ค้นหาไข่",
    ["Predictor"] = "🔮 คาดการณ์",
    ["Progress"] = "📈 ความคืบหน้า",
    ["Server"] = "🌐 เซิร์ฟเวอร์",
    ["Misc"] = "⚙️ อื่นๆ",
    ["Webhook"] = "🔗 เว็บฮุค",
    ["Discord"] = "💬 ดิสคอร์ด",
    ["Quick & Keys"] = "⚡ ทางลัดและปุ่มลัด",
    ["Settings"] = "⚙️ ตั้งค่า",
    ["Config"] = "📁 คอนฟิก",
    ["Search"] = "🔎 ค้นหา",
    ["Filter features..."] = "ค้นหาเมนู...",

    -- 🧪 DR SCRAMBLE
    ["Dr Scramble Event"] = "🧪 กิจกรรม Dr. Scramble",
    ["Auto Buy Scrambled"] = "🛒 ซื้อ Scrambled อัตโนมัติ",
    ["Buy another Scrambled from the event shop when you run out"] = "ซื้อ Scrambled เพิ่มจากร้านกิจกรรมเมื่อของหมด",
    ["Go To Secret Cave"] = "🕳️ ไปถ้ำลับ",
    ["Go"] = "➡️ ไป",
    ["Auto Open Vault"] = "🔐 เปิด Vault อัตโนมัติ",
    ["Open the vault when all 5 parts are found"] = "เปิด Vault อัตโนมัติเมื่อพบชิ้นส่วนครบ 5 ชิ้น",
    ["Auto Buy Scramble Shop"] = "🛒 ซื้อของร้าน Scramble อัตโนมัติ",
    ["Buy the picked items with Samples"] = "ใช้ Samples ซื้อไอเท็มที่เลือกไว้",
    ["Scramble Shop Items"] = "📦 ไอเท็มร้าน Scramble",
    ["Keep Samples"] = "💾 เก็บ Samples สำรอง",
    ["Auto Use Scrambled Mutation"] = "🧬 ใช้ Scrambled Mutation อัตโนมัติ",
    ["Turn it on to start applying Scrambled"] = "เปิดใช้งานเพื่อเริ่มใช้ Scrambled",

    -- 🤖 ล่าโดรน
    ["Auto Hunt Drones"] = "🤖 ล่าโดรนอัตโนมัติ",
    ["Kill drones during outbreaks for Samples and Drone Parts"] = "กำจัดโดรนระหว่าง Outbreak เพื่อรับ Samples และชิ้นส่วนโดรน",
    ["Hunt Priority"] = "🎯 ลำดับการล่า",
    ["Nearest"] = "📍 ใกล้ที่สุด",
    ["Rare First"] = "💎 แรร์ก่อน",
    ["Most HP First"] = "❤️ เลือดมากที่สุด",
    ["Drone Types"] = "🤖 ประเภทโดรน",
    ["Scrap Drone"] = "🗑️ โดรนเศษเหล็ก",
    ["Reactor Drone"] = "⚡ โดรนเครื่องปฏิกรณ์",
    ["Augmented Drone"] = "🔧 โดรนอัปเกรด",
    ["Hunt Travel Method"] = "🚀 วิธีเดินทางไปหาโดรน",
    ["Teleport only to drones within 150 studs, farther ones are tweened"] = "วาร์ปไปหาโดรนที่อยู่ภายใน 150 Studs ส่วนที่ไกลกว่านั้นใช้ Tween",
    ["Hunt Tween Speed"] = "💨 ความเร็ว Tween ตอนล่า",
    ["Only Until Vault Parts Found"] = "🎯 ล่าจนกว่าจะพบชิ้นส่วน Vault ครบ",
    ["Auto Collect Lost Parts"] = "🧩 เก็บ Lost Parts อัตโนมัติ",
    ["Collect the 2 Lost Parts for the vault"] = "เก็บ Lost Parts ทั้ง 2 ชิ้นสำหรับเปิด Vault",
    ["Tween"] = "💨 Tween",
    ["Teleport"] = "⚡ วาร์ป",

    -- 🧪 LAB & MECH
    ["Dr Scramble Lab & Mech"] = "🧪 Lab และ Mech ของ Dr. Scramble",
    ["Auto Mech Boss"] = "🤖 ตีบอส Mech อัตโนมัติ",
    ["Mech Tween Speed"] = "💨 ความเร็ว Tween ของ Mech",
    ["Main Weapon Hold"] = "🔫 เวลาถืออาวุธหลัก",
    ["Scrambler Hold"] = "🧪 เวลาถือ Scrambler",
    ["Swap Two Weapons"] = "🔄 สลับอาวุธทั้งสองชิ้น",
    ["Boss Server Hop"] = "🌐 เปลี่ยนเซิร์ฟหาบอส",
    ["After each boss, hops to a less crowded server to fight again"] = "หลังจากกำจัดบอส จะเปลี่ยนไปเซิร์ฟที่คนน้อยกว่าเพื่อสู้ต่อ",
    ["Keep Hopping For"] = "⏱️ เปลี่ยนเซิร์ฟต่อเนื่องเป็นเวลา",
    ["Auto Claim Mastery"] = "🏆 ออโต้รับ Mastery",
    ["Lab is locked on this account"] = "🔒 Lab ถูกล็อกในบัญชีนี้",
    ["Lab Banners"] = "🎟️ แบนเนอร์ Lab",
    ["Auto Lab Trade-In"] = "🔄 แลก Lab อัตโนมัติ",
    ["Auto Reroll Lab Recipe"] = "🎲 สุ่มสูตร Lab ใหม่อัตโนมัติ",
    ["Auto Place Lab Reward Eggs"] = "🥚 วางไข่รางวัล Lab อัตโนมัติ",

    -- 🦋 BUTTERFLY BLOOM
    ["Butterfly Bloom"] = "🦋 บุบผาผีเสื้อ",
    ["Auto Butterfly Bloom"] = "🦋 จับผีเสื้ออัตโนมัติ",
    ["Catch Mode"] = "🎯 โหมดจับ",
    ["Catch Priority"] = "⭐ ลำดับการจับ",
    ["Only for Chase mode"] = "ใช้เฉพาะโหมดไล่ล่า",
    ["Catch Butterflies"] = "🦋 เลือกผีเสื้อที่จะจับ",
    ["Rarest"] = "💎 หายากที่สุด",
    ["Stand"] = "🧍 ยืนรอ",
    ["Chase"] = "🏃 ไล่จับ",
    ["Circle"] = "🔄 วนรอบ",
    ["Patrol"] = "🚶 เดินตรวจ",

    -- ✨ ESSENCE
    ["Essence Min Rarity"] = "✨ ระดับความหายากขั้นต่ำของ Essence",
    ["Only eggs of this rarity and above get the essence"] = "เฉพาะไข่ระดับนี้ขึ้นไปเท่านั้นที่จะได้รับ Essence",
    ["Essence Min Value"] = "💰 มูลค่าขั้นต่ำของ Essence",
    ["Skip eggs worth less than this (0 = off)"] = "ข้ามไข่ที่มีมูลค่าต่ำกว่านี้ (0 = ปิด)",
    ["Essence Target Eggs"] = "🥚 ไข่เป้าหมายสำหรับ Essence",
    ["Only use the essence on these eggs (empty = all)"] = "ใช้ Essence กับไข่ที่เลือกเท่านั้น (เว้นว่าง = ทั้งหมด)",
    ["Essence Priority"] = "⭐ ลำดับการใช้ Essence",
    ["Which egg gets the essence first"] = "เลือกไข่ที่จะได้รับ Essence ก่อน",
    ["Essence Skip Enchanted Eggs"] = "🚫 ข้ามไข่ Enchanted",
    ["Skip eggs that already got Enchanted, other mutations still get the essence"] = "ข้ามไข่ที่มี Enchanted แล้ว แต่ Mutation อื่นยังได้รับ Essence",
    ["Auto Trade Up"] = "🔄 เทรดอัปอัตโนมัติ",
    ["Trade Up Tiers"] = "📊 ระดับการเทรดอัป",
    ["Smart Trade For Essence"] = "🧠 เทรดอัจฉริยะเพื่อ Essence",
    ["Auto Craft Essence"] = "✨ สร้าง Essence อัตโนมัติ",
    ["Auto Use Enchanted Essence"] = "✨ ใช้ Enchanted Essence อัตโนมัติ",
    ["Wisp Companion"] = "👻 Wisp คู่หู",
    ["Auto Wisp"] = "👻 Wisp อัตโนมัติ",

    -- ⚔️ COMBAT
    ["Hit Tween Speed"] = "⚔️ ความเร็ว Tween ตอนโจมตี",
    ["Hit Max Speed"] = "💨 ความเร็วสูงสุดตอนโจมตี",
    ["Hit Lead"] = "🎯 ระยะนำเป้า",
    ["Stand further ahead of the target (+) or closer to them (-)"] = "ยืนห่างจากเป้ามากขึ้น (+) หรือเข้าใกล้เป้ามากขึ้น (-)",
    ["Hit Sweep"] = "↔️ ระยะกวาด",
    ["How far you move back and forth in front of the target"] = "ระยะที่เคลื่อนที่ไปมาอยู่ด้านหน้าเป้าหมาย",
    ["Add/Remove Hits On Quick Bar 2"] = "➕➖ เพิ่ม/ลบปุ่มโจมตีจากแถบทางลัด 2",
    ["Pin or unpin the hit toggles on Quick Bar 2"] = "ปักหมุดหรือยกเลิกปุ่มโจมตีบนแถบทางลัด 2",
    ["Add"] = "➕ เพิ่ม",
    ["Hit Status"] = "📊 สถานะการตี",
    ["Idle"] = "💤 ว่าง",
    ["Auto Hit Nearest Player"] = "⚔️ ออโต้ตีผู้เล่นใกล้สุด",
    ["Auto Hit Egg Holders"] = "🥚 ออโต้ตีคนถือไข่",
    ["Auto Hit Specific Player"] = "🎯 ออโต้ตีผู้เล่นที่เจาะจง",
    ["Hit Player"] = "🎯 ตีผู้เล่น",
    ["Hit Aura"] = "💫 ตี Aura",
    ["Chase Settings"] = "🎯 ตั้งค่าการไล่",

    -- 🔮 LAB PREDICTOR
    ["Lab Predictor"] = "🔮 คาดการณ์ Lab",
    ["Biohazard Pets"] = "☣️ สัตว์ Biohazard",
    ["Banner chance"] = "🎟️ โอกาสได้แบนเนอร์",
    ["Locked on this account"] = "🔒 ล็อกในบัญชีนี้",
    ["REWARD ODDS - BIOHAZARD PETS"] = "🎁 โอกาสได้รับรางวัล • สัตว์ Biohazard",
    ["ACTIVE"] = "🟢 กำลังทำงาน",
    ["Ends in"] = "⏳ สิ้นสุดใน",
    ["1 in"] = "🎲 โอกาส 1 ใน",
    ["Chase pet"] = "🏃 สัตว์ที่ต้องไล่จับ",

    -- 🔍 AUTO HOP / EGG FINDER
    ["Auto Hop"] = "🔍 เปลี่ยนเซิร์ฟอัตโนมัติ",
    ["Joins new servers to find eggs that match the filters below"] = "เข้าเซิร์ฟเวอร์ใหม่เพื่อค้นหาไข่ตามตัวกรองด้านล่าง",
    ["IDLE"] = "💤 ว่าง",
    ["Turn on Auto Hop to start hunting"] = "เปิด Auto Hop เพื่อเริ่มค้นหา",
    ["Players"] = "👥 ผู้เล่น",
    ["Hop Mode"] = "🌐 โหมดเปลี่ยนเซิร์ฟ",
    ["When to move on to the next server"] = "กำหนดเวลาที่จะไปเซิร์ฟเวอร์ถัดไป",
    ["Steal Then Hop"] = "🥚 ขโมยแล้วเปลี่ยนเซิร์ฟ",
    ["Rarity To Wait For"] = "💎 ระดับความหายากที่รอ",
    ["For After A Rare Spawns: this rarity or higher"] = "หลังจากมีไข่แรร์เกิด: ระดับนี้หรือสูงกว่า",
    ["Sync With Auto Steal Filters"] = "🔄 ซิงค์กับตัวกรองออโต้ขโมย",
    ["Changing a filter here also changes it in Auto Steal, and back"] = "เปลี่ยนตัวกรองที่นี่จะเปลี่ยนในออโต้ขโมยด้วย และกลับกัน",
    ["Min Value To Find"] = "💰 มูลค่าขั้นต่ำที่ค้นหา",
    ["Skip eggs worth less than this. Drag or type 250k, 50m, 15b"] = "ข้ามไข่ที่มีมูลค่าต่ำกว่านี้ เช่น 250k, 50m, 15b",
    ["First Hop Delay"] = "⏱️ หน่วงเวลาก่อนเปลี่ยนเซิร์ฟครั้งแรก",
    ["Wait after the script loads before the first hop"] = "รอหลังโหลดสคริปต์ก่อนเปลี่ยนเซิร์ฟครั้งแรก",

    -- 💬 DISCORD / COMMUNITY
    ["Community"] = "👥 ชุมชน",
    ["Official Discord Community"] = "💬 ชุมชน Discord อย่างเป็นทางการ",
    ["INVITE LINK"] = "🔗 ลิงก์เชิญ",
    ["Copy Link"] = "📋 คัดลอกลิงก์",
    ["WHAT YOU GET"] = "🎁 สิ่งที่จะได้รับ",
    ["New Scripts & Updates"] = "🆕 สคริปต์ใหม่และอัปเดต",
    ["Patch notes and new game scripts are posted there first."] = "แพตช์โน้ตและสคริปต์เกมใหม่จะโพสต์ที่นี่ก่อน",
    ["Giveaways"] = "🎁 แจกของรางวัล",
    ["Member giveaways and events are announced in the server."] = "ประกาศกิจกรรมและการแจกของสำหรับสมาชิกในเซิร์ฟเวอร์",
    ["Support"] = "🛠️ ฝ่ายช่วยเหลือ",
    ["Ask for help, report bugs and get answers from the team."] = "สอบถาม แจ้งบั๊ก และรับความช่วยเหลือจากทีมงาน",
    ["Suggestions"] = "💡 ข้อเสนอแนะ",
    ["Request features and vote on what gets added next."] = "เสนอฟีเจอร์และโหวตสิ่งที่ต้องการให้เพิ่ม",
    ["Paste the copied link into your browser or the Discord app to join."] = "วางลิงก์ที่คัดลอกลงในเบราว์เซอร์หรือแอป Discord เพื่อเข้าร่วม",
    ["Copy Discord Link"] = "📋 คัดลอกลิงก์ Discord",
    ["Click"] = "🖱️ คลิก",

    -- ⚡ QUICK ACCESS
    ["Quick Access"] = "⚡ ทางลัด",
    ["Show Quick Bars"] = "👁️ แสดงแถบทางลัด",
    ["Floating quick bars; drag a header to move one"] = "แถบทางลัดแบบลอย ลากส่วนหัวเพื่อย้ายตำแหน่ง",
    ["Visible Quick Bars"] = "👁️ แถบทางลัดที่แสดง",
    ["Quick Bar Size"] = "📏 ขนาดแถบทางลัด",
    ["Quick Bar & Keybinds"] = "⌨️ แถบทางลัดและปุ่มลัด",
    ["Reset Quick Access"] = "🔄 รีเซ็ตทางลัด",
    ["Restore default items, bars and positions"] = "คืนค่าไอเท็ม แถบ และตำแหน่งเริ่มต้น",
    ["Reset Keybinds"] = "🔄 รีเซ็ตปุ่มลัด",
    ["Restore the defaults set in code"] = "คืนค่าปุ่มลัดตามที่กำหนดไว้ในโค้ด",
    ["Farm Tab"] = "🚜 แท็บฟาร์ม",
    ["Auto Steal"] = "🥚 ขโมยอัตโนมัติ",
    ["Auto Claim Mastery"] = "🏆 ออโต้รับ Mastery",
    ["Auto Lab Trade-In"] = "🔄 แลก Lab อัตโนมัติ",
    ["Auto Reroll Lab Recipe"] = "🎲 สุ่มสูตร Lab ใหม่อัตโนมัติ",
    ["Auto Place Lab Reward Eggs"] = "🥚 วางไข่รางวัล Lab อัตโนมัติ",
    ["Auto Use Scrambled"] = "🧪 ใช้ Scrambled อัตโนมัติ",
    ["Smart Trade For Essence"] = "🧠 เทรดอัจฉริยะเพื่อ Essence",
    ["Auto Trade Up"] = "🔄 เทรดอัปอัตโนมัติ",

    -- ⚙️ SETTINGS
    ["Interface"] = "🖥️ หน้าต่าง UI",
    ["UI Size"] = "📏 ขนาด UI",
    ["Scales the main window; the corner grip does the same by hand"] = "ปรับขนาดหน้าต่างหลัก หรือใช้มุมหน้าต่างเพื่อปรับด้วยตัวเอง",
    ["Notifications"] = "🔔 การแจ้งเตือน",
    ["Show notification cards; turning this off hides every notify"] = "แสดงการแจ้งเตือน หากปิดจะซ่อนการแจ้งเตือนทั้งหมด",
    ["Open On Launch"] = "🚀 เปิดเมื่อเริ่ม",
    ["Open the UI automatically when the script starts"] = "เปิดหน้าต่าง UI อัตโนมัติเมื่อเริ่มสคริปต์",
    ["Defaults"] = "⚙️ ค่าเริ่มต้น",
    ["Reset to Defaults"] = "🔄 คืนค่าเริ่มต้น",
    ["Reset every feature to its built-in default"] = "รีเซ็ตทุกฟังก์ชันกลับเป็นค่าเริ่มต้น",
    ["Turn Off All Toggles"] = "⛔ ปิดทุกฟังก์ชัน",
    ["Switch off every enabled toggle in the feature tabs"] = "ปิดทุกฟังก์ชันที่กำลังเปิดใช้งานอยู่",
    ["Performance"] = "🚀 ประสิทธิภาพ",
    ["FPS Cap"] = "🎮 จำกัด FPS",
    ["Optimizer"] = "⚡ เพิ่มประสิทธิภาพ",
    ["Strip shadows, textures and effects for the highest FPS"] = "ลดเงา พื้นผิว และเอฟเฟกต์เพื่อเพิ่ม FPS ให้สูงขึ้น",
    ["FPS and Ping"] = "📊 FPS และ Ping",
    ["FPS and Ping Size"] = "📏 ขนาด FPS และ Ping",
    ["Utility"] = "🛠️ เครื่องมือ",
    ["Anti AFK"] = "🛡️ ป้องกัน AFK",
    ["Auto Load Script"] = "📜 โหลดสคริปต์อัตโนมัติ",

    -- 🌐 SERVER
    ["Server Hop Mode"] = "🌐 โหมดย้ายเซิร์ฟ",
    ["Most Players"] = "👥 ผู้เล่นมากที่สุด",
    ["Random"] = "🎲 สุ่ม",
    ["Least Players"] = "👤 ผู้เล่นน้อยที่สุด",
    ["Server Hop"] = "🌐 ย้ายเซิร์ฟ",
    ["Job ID"] = "🆔 รหัสเซิร์ฟเวอร์",
    ["Paste a server Job ID..."] = "วาง Job ID ของเซิร์ฟเวอร์...",
    ["Join Job ID"] = "🚪 เข้าเซิร์ฟตาม Job ID",
    ["Copy Current Job ID"] = "📋 คัดลอก Job ID ปัจจุบัน",
    ["Rejoin Server"] = "🔄 เข้าเซิร์ฟเดิม",
    ["Auto Rejoin When Disconnect"] = "🔄 เข้าใหม่อัตโนมัติเมื่อหลุด",

    -- 🥚 COMMON OPTIONS
    ["Any"] = "🌟 ทุกระดับ",
    ["Common"] = "⚪ ธรรมดา",
    ["Uncommon"] = "🟢 ไม่ธรรมดา",
    ["Rare"] = "🔵 แรร์",
    ["Epic"] = "🟣 อีปิค",
    ["Legendary"] = "🟠 ตำนาน",
    ["Mythic"] = "🔴 มิธิค",
    ["Cosmic"] = "🌌 คอสมิก",
    ["Secret"] = "🔮 ลับ",
    ["Eternal"] = "♾️ นิรันดร์",
    ["Divine"] = "✨ ศักดิ์สิทธิ์",
    ["Value"] = "💰 มูลค่า",
    ["Rarity"] = "💎 ความหายาก",
    ["Time Left"] = "⏳ เวลาที่เหลือ",
    ["Always"] = "🔒 เสมอ",
    ["None"] = "❌ ไม่มี",
    ["Off"] = "🔴 ปิด",
    ["On"] = "🟢 เปิด",
    ["Auto"] = "⚡ อัตโนมัติ",
    ["Left"] = "เหลือ",
    ["Tries"] = "ครั้งที่ลอง",
    ["Applied"] = "ใช้งานแล้ว",

    -- 🛠️ MOVEMENT
    ["Movement"] = "🏃 การเคลื่อนที่",
    ["Speed Boost"] = "💨 เพิ่มความเร็ว",
    ["Boost Speed"] = "⚡ ระดับความเร็ว",
    ["Infinite Jump"] = "🪽 กระโดดไม่จำกัด",
    ["Character"] = "🏃 ตัวละคร",
    ["Invisibility"] = "👻 ล่องหน",
    ["Makes you invisible to other players"] = "ทำให้ผู้เล่นอื่นมองไม่เห็นคุณ",
    ["Anti Ragdoll"] = "🛡️ ป้องกันล้ม",
    ["Anti Trap"] = "🛡️ ป้องกันกับดัก",
    ["Traps from other players cannot catch you"] = "กับดักจากผู้เล่นอื่นจะไม่สามารถจับคุณได้",
    ["Instant Prompts"] = "⚡ กด Prompt ทันที",

    -- 👁️ ESP
    ["ESP"] = "👁️ ESP",
    ["ESP Eggs"] = "🥚 ESP ไข่",
    ["ESP Fixed Size"] = "📏 ล็อกขนาด ESP",
    ["ESP Own Base Eggs"] = "🏠 ESP ไข่ในฐานตัวเอง",
    ["ESP Min Rarity"] = "💎 ระดับความหายากขั้นต่ำของ ESP",
    ["ESP Show Info"] = "📋 แสดงข้อมูล ESP",
    ["ESP Min Value"] = "💰 มูลค่าขั้นต่ำของ ESP",
    ["ESP Egg Size"] = "📏 ขนาด ESP ไข่",
    ["ESP Guards"] = "🛡️ ESP ยาม",
    ["ESP Guard Size"] = "📏 ขนาด ESP ยาม",
    ["ESP Lost Parts"] = "🧩 ESP ชิ้นส่วนที่หาย",
    ["ESP Players"] = "👥 ESP ผู้เล่น",
    ["ESP Player Info"] = "📋 ข้อมูล ESP ผู้เล่น",
    ["ESP Player Size"] = "📏 ขนาด ESP ผู้เล่น",

    -- 🥚 AUTO STEAL
    ["Auto Steal"] = "🥚 ขโมยอัตโนมัติ",
    ["Target Areas"] = "📍 พื้นที่เป้าหมาย",
    ["Min Rarity"] = "💎 ระดับความหายากขั้นต่ำ",
    ["Steal eggs of the chosen rarity and every rarity above it"] = "ขโมยไข่ตั้งแต่ระดับที่เลือกขึ้นไป",
    ["Min Value To Steal"] = "💰 มูลค่าขั้นต่ำที่จะขโมย",
    ["Skip eggs worth less than this (0 = off)"] = "ข้ามไข่ที่มีมูลค่าต่ำกว่านี้ (0 = ปิด)",
    ["Target Specific Eggs"] = "🎯 ขโมยเฉพาะไข่ที่เลือก",
    ["Only steal these eggs (empty = all)"] = "ขโมยเฉพาะไข่เหล่านี้ (เว้นว่าง = ทั้งหมด)",
    ["Steal Missing Index Eggs"] = "📖 ขโมยไข่ที่ขาดในสมุด",
    ["Also steal eggs missing from your index, highest area first"] = "ขโมยไข่ที่ยังขาดในสมุด โดยเริ่มจากพื้นที่สูงสุดก่อน",
    ["Instant Steal"] = "⚡ ขโมยทันที",
    ["Instant Steal Steps"] = "📊 ขั้นตอนการขโมยทันที",
    ["Higher is safer but takes longer"] = "ค่าสูงจะปลอดภัยกว่า แต่ใช้เวลานานขึ้น",
    ["Min Steal Value"] = "💰 มูลค่าขั้นต่ำที่จะขโมย",
    ["Steal Missing Lab Eggs"] = "🧪 ขโมยไข่ Lab ที่ขาด",
    ["Carry Speed"] = "💨 ความเร็วขณะถือ",
    ["Anti Guard Panel"] = "🛡️ แผงป้องกันยาม",
    ["Sort Best Mutation"] = "🧬 เรียงตาม Mutation ที่ดีที่สุด",
    ["Instant Steal: OFF"] = "⚡ ขโมยทันที: ปิด",
    ["Instant Steal: ON"] = "⚡ ขโมยทันที: เปิด",
    ["Eggs in Bag"] = "🎒 ไข่ในกระเป๋า",
    ["Sort: Highest Value"] = "เรียงตาม: 💰 มูลค่าสูงสุด",

    -- 🥚 AUTO HATCH / PLACE
    ["Auto Hatch"] = "🥚 ฟักไข่อัตโนมัติ",
    ["Hatch Min Rarity"] = "💎 ระดับขั้นต่ำในการฟัก",
    ["Hatch eggs of the chosen rarity and every rarity above it"] = "ฟักไข่ตั้งแต่ระดับที่เลือกขึ้นไป",
    ["Min Hatch Value"] = "💰 มูลค่าขั้นต่ำในการฟัก",
    ["Hatch Specific Eggs"] = "🎯 ไข่ที่ต้องการฟัก",
    ["Only hatch these eggs (empty = all)"] = "ฟักเฉพาะไข่เหล่านี้ (เว้นว่าง = ทั้งหมด)",
    ["Auto Place Egg"] = "🥚 วางไข่อัตโนมัติ",
    ["Eggs placed"] = "🥚 ไข่ที่วางแล้ว",
    ["Place Rarities"] = "💎 ระดับที่ต้องการวาง",
    ["Only place eggs of the picked rarities (empty = all)"] = "วางเฉพาะไข่ระดับที่เลือก (เว้นว่าง = ทั้งหมด)",
    ["Place Specific Eggs"] = "🎯 ไข่ที่ต้องการวาง",
    ["Only place these eggs (empty = all)"] = "วางเฉพาะไข่เหล่านี้ (เว้นว่าง = ทั้งหมด)",
    ["Min Place Value"] = "💰 มูลค่าขั้นต่ำในการวาง",
    ["Drop Eggs At Safe Zone"] = "🥚 ทิ้งไข่ที่พื้นที่ปลอดภัย",
    ["Auto Treadmill"] = "🏃 ออโต้ลู่วิ่ง",
    ["Stay On Treadmill"] = "🔒 อยู่บนลู่วิ่งเสมอ",
    ["Auto Hatch & Equip"] = "🥚 ออโต้ฟัก & สวมใส่",
    ["Auto Equip Best"] = "⭐ ออโต้ใส่ตัวที่ดีที่สุด",
    ["Equip Best when a better pet appears"] = "เปลี่ยนไปใส่ตัวที่เก่งกว่าทันทีเมื่อสุ่มได้",

    -- ❤️ FAVORITE
    ["Auto Favorite Pet"] = "❤️ ถูกใจสัตว์เลี้ยงอัตโนมัติ",
    ["Favorite Pets Now"] = "❤️ ถูกใจสัตว์ตอนนี้",
    ["Favorite matching pets once"] = "ถูกใจสัตว์ที่ตรงเงื่อนไข 1 ครั้ง",
    ["Favorite Rule"] = "📋 กฎการถูกใจ",
    ["Match All"] = "✅ ต้องตรงทุกเงื่อนไข",
    ["Favorite Min Rarity"] = "💎 ระดับขั้นต่ำที่ถูกใจ",
    ["Favorite pets of the chosen rarity and every rarity above it (Off = skip)"] = "ถูกใจสัตว์ตั้งแต่ระดับที่เลือกขึ้นไป (ปิด = ข้าม)",
    ["Favorite Mutations"] = "🧬 Mutation ที่ต้องการถูกใจ",
    ["Mutation check (empty = skip)"] = "ตรวจสอบ Mutation (เว้นว่าง = ข้าม)",
    ["Favorite matches"] = "❤️ รายการที่ถูกใจ",
    ["Favorite Preview"] = "🔍 ตัวอย่างการถูกใจ",
    ["Favorite Equipped Now"] = "❤️ ถูกใจสัตว์ที่สวมใส่ตอนนี้",
    ["Favorite all equipped pets once"] = "กดถูกใจสัตว์ที่ใส่อยู่ทั้งหมด 1 ครั้ง",
    ["Unfavorite Equipped Now"] = "💔 ปลดถูกใจสัตว์ที่สวมใส่ตอนนี้",
    ["Unfavorite all equipped pets once"] = "ปลดถูกใจสัตว์ที่ใส่อยู่ทั้งหมด 1 ครั้ง",
    ["Min Favorite Value"] = "💰 มูลค่าขั้นต่ำที่ถูกใจ",
    ["Always Favorite Species"] = "❤️ ถูกใจสายพันธุ์นี้เสมอ",
    ["Always favorite these species"] = "ล็อกสายพันธุ์ที่ชอบไว้ตลอด",
    ["Auto Unfavorite Equipped"] = "💔 ออโต้ปลดถูกใจตัวที่ใส่",
    ["Unfavorite equipped pets not in the rules"] = "ปลดตัวโปรดสัตว์ที่สวมใส่ถ้าไม่ตรงเงื่อนไข",
    ["Value check (0 = skip)"] = "ตรวจสอบมูลค่า (0 = ข้าม)",

    -- 💰 SELL
    ["Auto Sell"] = "💰 ขายอัตโนมัติ",
    ["Auto Sell Egg"] = "🥚 ขายไข่อัตโนมัติ",
    ["Sell Eggs Now"] = "💰 ขายไข่ตอนนี้",
    ["Sell matching eggs once"] = "ขายไข่ที่ตรงเงื่อนไข 1 ครั้ง",
    ["Egg Sell Rule"] = "📋 กฎการขายไข่",
    ["Egg Max Rarity"] = "💎 ระดับสูงสุดของไข่ที่จะขาย",
    ["Sell eggs at or below this rarity"] = "ขายไข่ระดับนี้หรือต่ำกว่า",
    ["Egg Sell Value"] = "💰 มูลค่าขายไข่",
    ["Sell eggs worth less than this (0 = off)"] = "ขายไข่ที่มีมูลค่าต่ำกว่านี้ (0 = ปิด)",
    ["Keep Mutated Eggs"] = "🧬 เก็บไข่ที่มี Mutation",
    ["Never sell mutated eggs"] = "ไม่ขายไข่ที่มี Mutation",
    ["Blacklist Sell Eggs"] = "🚫 ยกเว้นไข่จากการขาย",
    ["These eggs are never sold"] = "ไข่เหล่านี้จะไม่ถูกขาย",
    ["Auto Sell Pet"] = "🐾 ขายสัตว์เลี้ยงอัตโนมัติ",
    ["Sell Pets Now"] = "💰 ขายสัตว์เลี้ยงตอนนี้",
    ["Sell matching pets once"] = "ขายสัตว์ที่ตรงเงื่อนไข 1 ครั้ง",
    ["Pet Sell Rule"] = "📋 กฎการขายสัตว์เลี้ยง",
    ["Rarity And Value"] = "💎 ระดับและมูลค่า",
    ["Which checks must pass to sell"] = "เงื่อนไขไหนที่ต้องผ่านถึงจะขาย",
    ["Pet Max Rarity"] = "💎 ระดับสูงสุดของสัตว์ที่จะขาย",
    ["Sell pets at or below this rarity"] = "ขายสัตว์ระดับนี้หรือต่ำกว่า",
    ["Pet Sell Value"] = "💰 มูลค่าขายสัตว์เลี้ยง",
    ["Sell pets worth less than this (0 = off)"] = "ขายสัตว์ที่มีมูลค่าต่ำกว่านี้ (0 = ปิด)",
    ["Keep Mutated Pets"] = "🧬 เก็บสัตว์ที่มี Mutation",
    ["Never sell mutated pets"] = "ไม่ขายสัตว์ที่มี Mutation",
    ["Blacklist Sell Pets"] = "🚫 ยกเว้นสัตว์จากการขาย",
    ["These pets are never sold"] = "สัตว์เหล่านี้จะไม่ถูกขาย",
    ["Pet matches"] = "🐾 สัตว์ที่เข้าเงื่อนไข",
    ["Egg matches"] = "🥚 ไข่ที่เข้าเงื่อนไข",

    -- 🧪 LAB EGG SELL
    ["Auto Sell Lab Egg"] = "🧪 ขายไข่ Lab อัตโนมัติ",
    ["Sell Lab Eggs Now"] = "💰 ขายไข่ Lab ตอนนี้",
    ["Sell matching Lab eggs once"] = "ขายไข่ Lab ที่ตรงเงื่อนไข 1 ครั้ง",
    ["Lab egg matches"] = "🥚 ไข่ Lab ที่ตรงเงื่อนไข",
    ["Sell Lab Egg Rule"] = "📋 กฎการขายไข่ Lab",
    ["Lab Egg Max Rarity"] = "💎 ระดับสูงสุดของไข่ Lab",
    ["Sell Lab eggs at or below this rarity (Off = none by rarity)"] = "ขายไข่ Lab ระดับนี้หรือต่ำกว่า (ปิด = ไม่จำกัดตามระดับ)",
    ["Lab Egg Sell Value"] = "💰 มูลค่าขายไข่ Lab",
    ["Sell Lab eggs worth less than this (0 = off)"] = "ขายไข่ Lab ที่มีมูลค่าต่ำกว่านี้ (0 = ปิด)",
    ["Keep Mutated Lab Eggs"] = "🧬 เก็บไข่ Lab ที่มี Mutation",
    ["Never sell mutated Lab eggs"] = "ไม่ขายไข่ Lab ที่มี Mutation",
    ["Keep Lab Pets"] = "🐾 เก็บสัตว์ Lab",
    ["Lab eggs of these pets are never sold"] = "ไข่ Lab ของสัตว์เหล่านี้จะไม่ถูกขาย",

    -- 🔧 FUSE
    ["Auto Fuse Machine"] = "🔧 ผสมสัตว์อัตโนมัติ",
    ["Fuse 3 same pets into an egg, nonstop"] = "ผสมสัตว์ชนิดเดียวกัน 3 ตัวเป็นไข่แบบต่อเนื่อง",
    ["No three matching pets"] = "❌ ไม่มีสัตว์ที่ตรงกันครบ 3 ตัว",
    ["Fuse Priority Mode"] = "⭐ ลำดับการผสม",
    ["Lowest Rarity First"] = "⬇️ ระดับต่ำสุดก่อน",
    ["Pets To Use"] = "🐾 สัตว์ที่จะใช้ผสม",
    ["Lowest To Highest"] = "⬆️ จากต่ำไปสูง",
    ["Max Rarity to Fuse"] = "💎 ระดับสูงสุดที่จะผสม",
    ["Specific Species to Fuse"] = "🎯 สายพันธุ์ที่ต้องการผสม",
    ["Only fuse these species (empty = all)"] = "ผสมเฉพาะสายพันธุ์เหล่านี้ (เว้นว่าง = ทั้งหมด)",
    ["Skip Mutated Pets"] = "🧬 ข้ามสัตว์ที่มี Mutation",
    ["Eject Incomplete Slots"] = "📤 นำสัตว์ที่ไม่ครบชุดออก",
    ["Take out pets that can't make a set"] = "นำสัตว์ที่ไม่สามารถรวมเป็นชุด 3 ตัวออก",

    -- 📁 CONFIG
    ["Steal Panel"] = "🥚 แผงควบคุมการขโมย",
    ["Steal"] = "🥚 ขโมย",
    ["Delete Config"] = "🗑️ ลบคอนฟิก",
    ["Set Startup Config"] = "🚀 ตั้งเป็นคอนฟิกเริ่มต้น",
    ["Load Config"] = "📂 โหลดคอนฟิก",
    ["Save Config"] = "💾 บันทึกคอนฟิก",
    ["Import / Export"] = "📦 นำเข้า / ส่งออก",
    ["Export Config"] = "📤 ส่งออกคอนฟิก",
    ["Import Config Text"] = "📥 วางข้อความคอนฟิก",
    ["Paste exported config JSON..."] = "วาง JSON ของคอนฟิกที่ส่งออกมา...",
    ["Import Config"] = "📥 นำเข้าคอนฟิก",
    ["Create New Config"] = "➕ สร้างคอนฟิกใหม่",
    ["New Config Name"] = "📝 ชื่อคอนฟิกใหม่",
    ["New config name..."] = "พิมพ์ชื่อคอนฟิกใหม่...",
    ["Profiles"] = "👤 โปรไฟล์",
    ["Create New"] = "➕ สร้างใหม่",
    ["Import"] = "📥 นำเข้า",
    ["Save"] = "💾 บันทึก",
    ["Load"] = "📂 โหลด",
    ["Reset"] = "🔄 รีเซ็ต",
    ["Turn Off"] = "🔴 ปิดการทำงาน",
    ["Default"] = "ค่าเริ่มต้น",
    ["Auto Save Config"] = "💾 เซฟคอนฟิกอัตโนมัติ",
    ["Auto Load Config"] = "📂 โหลดคอนฟิกอัตโนมัติ",
    ["New config copies current settings"] = "คอนฟิกใหม่จะคัดลอกจากค่าปัจจุบัน",
    ["Enter new config name..."] = "พิมพ์ชื่อคอนฟิกใหม่...",
    ["Config Name"] = "📝 ชื่อคอนฟิก",

    -- 📊 PROGRESS
    ["Auto Progression"] = "📈 ความคืบหน้าอัตโนมัติ",
    ["Auto Buy Trail"] = "👣 ซื้อ Trail อัตโนมัติ",
    ["Automatically buy available trails when affordable"] = "ซื้อ Trail ที่มีให้โดยอัตโนมัติเมื่อเงินเพียงพอ",
    ["Auto Upgrade Base"] = "🏠 อัปเกรดฐานอัตโนมัติ",
    ["Automatically upgrade base when money is available"] = "อัปเกรดฐานอัตโนมัติเมื่อมีเงินเพียงพอ",
    ["Auto Upgrade Treadmill"] = "🏃 อัปเกรดลู่วิ่งอัตโนมัติ",
    ["Automatically upgrade treadmill when money is available"] = "อัปเกรดลู่วิ่งอัตโนมัติเมื่อมีเงินเพียงพอ",
    ["Auto Claim"] = "🎁 ออโต้รับรางวัล",
    ["Claim offline money & index rewards"] = "รับเงินออฟไลน์และรางวัลจากสมุด",

    -- 🪝 WEBHOOK / PREDICTOR
    ["Discord Webhook"] = "🔗 Discord Webhook",
    ["Egg Predictor"] = "🔮 คาดการณ์ไข่",
    ["Sort By"] = "↕️ เรียงตาม",
    ["Preview Card"] = "👁️ ดูตัวอย่างการ์ด",
    ["Search eggs..."] = "🔎 ค้นหาไข่...",
    ["Fly to egg"] = "🪽 บินไปหาไข่",
    ["Tap an egg below to preview it"] = "แตะไข่ด้านล่างเพื่อดูตัวอย่าง",
    ["Ready to hatch"] = "🥚 พร้อมฟักแล้ว",
    ["IN INVENTORY"] = "🎒 ในกระเป๋า",
    ["In inventory"] = "🎒 ในกระเป๋า",
    ["Search by pet name, mutation, status..."] = "ค้นหาด้วยชื่อสัตว์, การกลายพันธุ์, สถานะ...",
    ["Value"] = "💰 มูลค่า",
    ["Time Left"] = "⏳ เวลาที่เหลือ",
    ["Scale"] = "📏 ขนาด",

    -- 🧪 SCRAMBLE LAB
    ["Scramble Lab Automation"] = "🧪 ระบบอัตโนมัติ Scramble Lab",
    ["Auto Steal Required Eggs"] = "🥚 ออโต้ขโมยไข่ที่ต้องการ",
    ["Stop After Requirement Met"] = "🛑 หยุดเมื่อครบเงื่อนไข",
    ["Auto Place Lab Egg"] = "🥚 ออโต้วางไข่ Lab",
    ["Auto Hatch Lab Egg"] = "🥚 ออโต้ฟักไข่ Lab",
    ["Auto Sacrifice Eggs"] = "🔪 ออโต้สังเวยไข่",
    ["Egg Banner"] = "🎟️ แบนเนอร์ไข่",
    ["Banner:"] = "🎟️ แบนเนอร์:",
    ["Rotates in:"] = "🔄 รีเฟรชใน:",
    ["Pity:"] = "🎯 การันตี:",
    ["Status:"] = "📋 สถานะ:",
    ["Eggs Ready"] = "🥚 ไข่พร้อม",
    ["Missing"] = "❌ ที่ขาด",
    ["Open Lab Window"] = "🪟 เปิดหน้าต่าง Lab",
    ["Teleport to Scramble Lab"] = "🚀 วาร์ปไป Scramble Lab",
    ["Experimental Pets"] = "🧪 สัตว์ทดลอง",
    ["Unstable DNA"] = "🧬 DNA ไม่เสถียร",

    -- 👹 DR. SCRAMBLE BOSS
    ["Dr. Scramble Boss"] = "👹 บอส Dr. Scramble",
    ["Auto Enter Boss"] = "🚪 ออโต้เข้าบอส",
    ["Fast Swing (Tool Swap)"] = "⚡ ตีเร็ว (สลับอาวุธ)",
    ["Boss: Next in"] = "👹 บอส: ครั้งถัดไปใน",
    ["Auto Buy Shop"] = "🛒 ออโต้ซื้อของร้าน",
    ["Shop Items"] = "📦 ไอเท็มร้านค้า",
    ["Scrambled Mutation"] = "🧬 การกลายพันธุ์ Scrambled",
    ["2x Cash Booster"] = "💰 บูสต์เงิน x2",
    ["1.25x Speed"] = "💨 บูสต์ความเร็ว x1.25",
    ["2x Treadmill Booster"] = "🏃 บูสต์ลู่วิ่ง x2",

    -- 🧬 MUTATION ITEMS
    ["Mutation Items"] = "🧬 ไอเท็มการกลายพันธุ์",
    ["Shards"] = "💎 เศษผลึก (Shards)",
    ["Enchanted"] = "✨ Enchanted",
    ["Auto Mutate Egg"] = "🧬 ออโต้ใช้ไอเท็มกลายพันธุ์",

    -- 🦖 ชื่อสัตว์/ไข่
    ["Gargoyle"] = "🗿 การ์กอยล์",
    ["Pure Jellyfish"] = "🪼 แมงกะพรุนบริสุทธิ์",
    ["Sharkodile"] = "🦈 ฉลามจระเข้",
    ["Rhinobear"] = "🦏 แรดหมี",
    ["Octophant"] = "🐙 ปลาหมึกช้าง",
    ["Nuclear Mantis"] = "☢️ ตั๊กแตนนิวเคลียร์",
    ["Dreadstinger"] = "🦂 แมงป่องสะพรึง",
    ["Astral Jackalope"] = "🌟 กระต่ายเขาเทพ",
    ["Demon Hound"] = "👹 หมาปีศาจ",
    ["Mantaris"] = "🦗 แมงตั๊กแตน",
    ["Snowy Owl"] = "🦉 นกฮูกหิมะ",
    ["Sacred Moth"] = "🦋 ผีเสื้อศักดิ์สิทธิ์",
    ["Imp"] = "😈 อิมป์",
    ["Cosmic Skeleton Boss"] = "💀 บอสโครงกระดูกคอสมิก",
    ["Holy Peacock"] = "🦚 นกยูงศักดิ์สิทธิ์",
    ["Koi"] = "🐟 ปลาคาร์ป",
    ["La Vacca Saturno Saturnita"] = "🐄 วัวดาวเสาร์",

    -- 🎯 PRIORITY (ตกค้าง)
    ["Steal Filter Eggs"] = "🥚 ขโมยไข่ที่กรองไว้",
    ["Mech Boss"] = "🤖 บอส Mech",
    ["Steal Wisp Quest Eggs"] = "👻 ขโมยไข่เควส Wisp",

    -- 🚀 PERFORMANCE (ตกค้าง)
    ["Disable 3D Render"] = "🚫 ปิดการเรนเดอร์ 3D",
    ["Farm HUD"] = "🖥️ HUD ฟาร์ม",
    ["Drag any panel to place it where you like"] = "ลากแผงใดก็ได้เพื่อวางตำแหน่งที่ต้องการ",

    -- ⚙️ SETTINGS (ตกค้าง)
    ["SETTINGS"] = "⚙️ ตั้งค่า",
    ["Discord"] = "💬 ดิสคอร์ด",
    ["Copy Discord Link"] = "📋 คัดลอกลิงก์ Discord",
    ["Theme"] = "🎨 ธีม",
    ["Blue Black"] = "🔵 ฟ้าน้ำเงิน",
    ["UI Size"] = "📏 ขนาด UI",
    ["Info"] = "ℹ️ ข้อมูล",
    ["Theme changes accent. UI Size scales the whole window."] = "ธีมเปลี่ยนสีพื้นหลัง. ขนาด UI ปรับขนาดหน้าต่างทั้งหมด",
}

-- ==========================================
-- 2. LOWERCASE DICTIONARY
-- ==========================================

local lowerDict = {}
for key, value in pairs(dict) do
    lowerDict[string.lower(key)] = value
end

-- ==========================================
-- 3. DYNAMIC TEXT
-- ==========================================

local function translateDynamicText(txt)
    local newTxt = txt

    -- Dr Scramble
    newTxt = newTxt:gsub("^Samples (%d+) %- Lost (%d+)/(%d+) %- Drone (%d+)/(%d+) %- Outbreak in (.*)", "Samples %1 | ชิ้นส่วนที่หาย %2/%3 | โดรน %4/%5 | Outbreak ใน %6")
    newTxt = newTxt:gsub("^Lost Parts on map (%d+)/(%d+) %- Collected (%d+)/(%d+) %- (.*)", "ชิ้นส่วนบนแมพ %1/%2 | เก็บแล้ว %3/%4 | %5")

    -- Auto Steal
    newTxt = newTxt:gsub("^Auto Steal: OFF", "ขโมยอัตโนมัติ: 🔴 ปิด")
    newTxt = newTxt:gsub("^Auto Steal: ON", "ขโมยอัตโนมัติ: 🟢 เปิด")
    newTxt = newTxt:gsub("^Sort: Value", "เรียงตาม: 💰 มูลค่า")
    newTxt = newTxt:gsub("^Sort: Rarity", "เรียงตาม: 💎 ความหายาก")
    newTxt = newTxt:gsub("^Tween Speed: (%d+)", "ความเร็ว Tween: %1")

    -- Config
    newTxt = newTxt:gsub("^Save: (.*)", "บันทึกข้อมูลไปที่: %1")
    newTxt = newTxt:gsub("^Startup Config: (.*)", "คอนฟิกเริ่มต้น: %1")
    newTxt = newTxt:gsub("^Auto save: (.*)", "บันทึกอัตโนมัติไปที่: %1")
    newTxt = newTxt:gsub("^Auto load: (.*)", "โหลดอัตโนมัติจาก: %1")

    -- Favorite
    newTxt = newTxt:gsub("Favorite matches %- (%d+) pets, (%d+) to mark %| (%d+) favorited", "ตรงเงื่อนไข %1 ตัว | รอติ๊ก %2 ตัว | ถูกใจแล้ว %3 ตัว")

    -- Fuse
    newTxt = newTxt:gsub("Next fuse %- (%d+) (.-) for %$(.*)", "คิวผสมถัดไป: %2 จำนวน %1 ตัว | ราคา %3")

    -- Sell
    newTxt = newTxt:gsub("Egg matches %- (%d+) eggs for %$(.*)", "พบไข่ตรงเงื่อนไข %1 ฟอง | ขายได้ %2")
    newTxt = newTxt:gsub("Pet matches %- (%d+) pets for %$(.*)", "พบสัตว์ตรงเงื่อนไข %1 ตัว | ขายได้ %2")

    -- Place / Equip
    newTxt = newTxt:gsub("Eggs placed (%d+)/(%d+) %- (%d+)/(%d+) pets equipped, (%d+) in bag", "วางไข่แล้ว %1/%2 | สวมใส่ %3/%4 ตัว | ในกระเป๋า %5 ตัว")

    -- Rift
    newTxt = newTxt:gsub("^Riftborn %- needs (.*)", "สูตร Rift ต้องการ: %1")
    newTxt = newTxt:gsub("READY TO HATCH %((%d+)%)", "พร้อมฟักแล้ว (%1)")
    newTxt = newTxt:gsub("(%d+) eggs %- (%d+) ready %- (%d+) growing %- (%d+) in bag %- Total (.*)", "รวม %1 ไข่ | พร้อมฟัก %2 | กำลังโต %3 | ในกระเป๋า %4 | ทั้งหมด %5")

    -- Essence
    newTxt = newTxt:gsub("^(%d+) Essence %- (%d+) enchanted %- (%d+) used", "Essence %1 | Enchanted %2 | ใช้ไป %3")
    newTxt = newTxt:gsub("^Enchanted Essence: (%d+)", "Enchanted Essence: %1")
    newTxt = newTxt:gsub("^Essence: (%d+)", "Essence: %1")

    -- Butterfly Bloom
    newTxt = newTxt:gsub("Next Butterfly Bloom in (.*)", "🦋 Butterfly Bloom ครั้งถัดไปใน %1")

    -- 🌟 ราคา/น้ำหนัก/ตัวคูณ
    newTxt = newTxt:gsub("(%d+%.%d+)M/s", "%1 ล้าน/วิ")
    newTxt = newTxt:gsub("(%d+%.%d+)K/s", "%1 พัน/วิ")
    newTxt = newTxt:gsub("(%d+%.%d+)B/s", "%1 พันล้าน/วิ")
    newTxt = newTxt:gsub("([%d,]+) Kg", "%1 กิโลกรัม")
    newTxt = newTxt:gsub("x(%d+%.%d+)", "x%1")

    return newTxt
end

-- ==========================================
-- 4. TRANSLATE OBJECT
-- ==========================================

local function translateText(obj)
    pcall(function()
        if not (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) then
            return
        end
        local currentText = obj.Text
        local dynamicText = translateDynamicText(currentText)
        if dynamicText ~= currentText then
            obj.Text = dynamicText
            currentText = dynamicText
        end
        local cleanText = currentText:gsub("<[^>]+>", ""):match("^%s*(.-)%s*$")
        if cleanText then
            local translated = lowerDict[string.lower(cleanText)]
            if translated then
                obj.Text = translated
            end
        end
        if obj:IsA("TextBox") then
            local placeholder = obj.PlaceholderText or ""
            local cleanPlaceholder = placeholder:gsub("<[^>]+>", ""):match("^%s*(.-)%s*$")
            if cleanPlaceholder then
                local translatedPlaceholder = lowerDict[string.lower(cleanPlaceholder)]
                if translatedPlaceholder then
                    obj.PlaceholderText = translatedPlaceholder
                end
            end
        end
    end)
end

-- ==========================================
-- 5. HOOK OBJECT
-- ==========================================

local function hookObject(obj)
    translateText(obj)
    pcall(function()
        if not (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) then
            return
        end
        if obj:GetAttribute("Hooked_Chilli") then
            return
        end
        obj:SetAttribute("Hooked_Chilli", true)
        obj:GetPropertyChangedSignal("Text"):Connect(function()
            translateText(obj)
        end)
        if obj:IsA("TextBox") then
            obj:GetPropertyChangedSignal("PlaceholderText"):Connect(function()
                translateText(obj)
            end)
        end
    end)
end

-- ==========================================
-- 6. SCAN CURRENT UI
-- ==========================================

for _, obj in ipairs(GuiService:GetDescendants()) do
    hookObject(obj)
end

-- ==========================================
-- 7. HOOK NEW UI
-- ==========================================

GuiService.DescendantAdded:Connect(function(obj)
    task.wait(0.05)
    hookObject(obj)
end)

-- ==========================================
-- 8. NOTIFICATION
-- ==========================================

pcall(function()
    StarterGui:SetCore("SendNotification", {
        Title = "🌶️ Chilli Hub • ภาษาไทย",
        Text = "แปลไทยโดย : บาฟัค •  พร้อมใช้งาน ✅",
        Duration = 5
    })
end)

-- ==========================================
-- 9. LOAD CHILLI HUB
-- ==========================================

local success, err = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
end)

if not success then
    warn("❌ Chilli Hub โหลดไม่สำเร็จ:")
    warn(err)
else
    print("✅ Chilli Hub โหลดสำเร็จ")
    print("เเปลไทยโดย บาฟัค")
end