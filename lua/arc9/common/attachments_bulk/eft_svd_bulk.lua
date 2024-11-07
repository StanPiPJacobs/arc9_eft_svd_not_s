local ATT = {}

///////////////////////////////////////      eft_muzzle_svd_std

ATT = {}

ATT.PrintName = "Izhmash 7.62x54 SVD flash hider with bayonet lug"
ATT.CompactName = "SVD"
ATT.Icon = Material("entities/eft_svd_attachments/muzzle.png", "mips smooth")
ATT.Description = [[Standard Izhmash-produced front sight assembly with permanently affixed long slotted flash hider and a bayonet lug.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

--ATT.EFTErgoAdd = -1
--ATT.CustomCons = { Ergonomics = "-1" }
ATT.RecoilMult = 0.93
ATT.VisualRecoilMult = 0.93

ATT.Model = "models/weapons/arc9/stas_eft/mods/muzzle_svd_std.mdl"
ATT.BoneMerge = true

ATT.Category = {"eft_svds_muzzle"}
ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = {"eft_svds_fs"},
        Pos = Vector(-0.15, 0, -1.2),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        Category = {"eft_svds_muzzle2"},
        Pos = Vector(-1.3, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_muzzle_svd_std")

///////////////////////////////////////      eft_hg_svd_std

ATT = {}

ATT.PrintName = "Wooden SVD handguard"
ATT.CompactName = "SVD"
ATT.Icon = Material("entities/eft_svd_attachments/hg.png", "mips smooth")
ATT.Description = [[Classic SVD handguard manufactured by Izhmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/stas_eft/mods/hg_svd_std.mdl"
ATT.BoneMerge = true

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.Category = {"eft_svds_hg"}

ARC9.LoadAttachment(ATT, "eft_hg_svd_std")

///////////////////////////////////////      eft_svd_stock_std

ATT = {}

ATT.PrintName = "Wooden stock for SVD"
ATT.CompactName = "SVD FG"
ATT.Icon = Material("entities/eft_svd_attachments/stock_std.png", "mips smooth")
ATT.Description = [[Wooden stock for SVD manufactured by Izhmash.]]
ATT.HasStock = true

ATT.EFTErgoAdd = 11
ATT.CustomPros = { Ergonomics = "+11" }
ATT.RecoilMult = 0.64
ATT.VisualRecoilMult = 0.64

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_svd_stock"}

ARC9.LoadAttachment(ATT, "eft_svd_stock_std")

///////////////////////////////////////      eft_svd_stock_tigr

ATT = {}

ATT.PrintName = "Wooden thumbhole stock for Tigr carbine"
ATT.CompactName = "SVD TIGR"
ATT.Icon = Material("entities/eft_svd_attachments/stock_tigr.png", "mips smooth")
ATT.Description = [[Wooden stock that can be commonly found on Tigr civilian carbines.]]
ATT.HasStock = true

ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }
ATT.RecoilMult = 0.62
ATT.VisualRecoilMult = 0.62

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_svd_stock"}

ARC9.LoadAttachment(ATT, "eft_svd_stock_tigr")

///////////////////////////////////////      eft_svd_stock_plastic

ATT = {}

ATT.PrintName = "Polymer stock for SVD"
ATT.CompactName = "SVD POLY"
ATT.Icon = Material("entities/eft_svd_attachments/stock_plastic.png", "mips smooth")
ATT.Description = [[Polymer stock for SVD manufactured by Izhmash. Installed on modern day SVD rifles.]]
ATT.HasStock = true

ATT.EFTErgoAdd = 14
ATT.CustomPros = { Ergonomics = "+14" }
ATT.RecoilMult = 0.66
ATT.VisualRecoilMult = 0.66

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_svd_stock"}

ARC9.LoadAttachment(ATT, "eft_svd_stock_plastic")

///////////////////////////////////////      eft_svd_stock_adapter

ATT = {}

ATT.PrintName = "SniperArms Dynamic SVD stock adapter"
ATT.CompactName = "SAD SVD"
ATT.Icon = Material("entities/eft_svd_attachments/stock_adapter.png", "mips smooth")
ATT.Description = [[Adapter for installation of telescopic stock buffer tubes on SVDs with non-folding stocks.]]
ATT.HasStock = true

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = "Buffer Tube",
        Category = "eft_ar15_buffertube",
        Pos = Vector(0.7, -0.8, -0.05),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ATT.Category = {"eft_svd_stock"}

ARC9.LoadAttachment(ATT, "eft_svd_stock_adapter")