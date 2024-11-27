AddCSLuaFile()

SWEP.Base = "arc9_eft_svds"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_snip")

SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu + Stan_Jacobs (Port from SPT)", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD + SPT Mod", 
    [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

ARC9:AddPhrase("eft_weapon_svd", "SVD", "en")
ARC9:AddPhrase("eft_weapon_svd", "СВД", "ru")
ARC9:AddPhrase("eft_weapon_svd", "SWD", "uwu")

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_svd")

SWEP.Description = [[Dragunov sniper rifle was developed in 1963 as a squad support weapon, since, according to Soviet doctrine, long-range engagement ability was lost to ordinary troops due to adoption of submachine guns and assault rifles. Chambered in 7.62x54R ammo.]]

-- SWEP.StandardPresets = {
--     "[308 Conversion]XQAAAQDgAgAAAAAAAAA9iIIiM7tuo1AtT00OeFDsVy0QjzPJ+n72/CiKtDlryAX9+6/kqhA7Hr1E/2D9Iz6rN8zTUCuQ+5Sp9lQY7qxUfunqrzbaeslGLj1cfug0NTlmGh3gA+wVZQA19whbS40jfVlj6uqIKtm8FZlaaIpJNHmek0HjPG94drKMnm1eLKJZln1zdAss1Q90n0VytUc4mj3lf8lEE2semdym9+SxGjHM01bSaBF/wcnHHwiusLCFbaQpe/jslG+Y7ojSHZTNEFqsqYb7KccG04jc/+gn2C2szNw="
-- }
    
SWEP.ViewModel = "models/weapons/arc9/stas_eft/c_svd.mdl"

------------------------- [[[           Attachments            ]]] -------------------------

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasHG") or
        !self:GetValue("HasGas") or
        !self:GetValue("HasStock") or
        !self:GetValue("HasBolt") or
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasAmmoooooooo") then
            
            if SERVER and self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasHG") or
        !self:GetValue("HasGas") or
        !self:GetValue("HasStock") or
        !self:GetValue("HasBolt") or
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasAmmoooooooo") then
            return true 
    end
end

SWEP.AttachmentElements = {
    ["eft_svds_barrel_std"] = { Bodygroups = { {1, 1} } },
    ["eft_svds_gas_std"] = { Bodygroups = { {2, 1} } },
    ["eft_svds_barrel_mount_drg"] = { Bodygroups = { {3, 1} } },
--    ["eft_muzzle_svd_std"] = { Bodygroups = { {4, 1} } },
    ["eft_muzzle_svds_std"] = { Bodygroups = { {4, 2} } },
    ["eft_muzzle_svds_adap"] = { Bodygroups = { {5, 1} } },
    ["eft_muzzle_svds_suppressor"] = { Bodygroups = { {6, 1} } },
    ["eft_svds_fs_std"] = { Bodygroups = { {7, 1} } },
    ["eft_svds_rs_std"] = { Bodygroups = { {11, 1} } },
    ["eft_rs_svds_tt01"] = { Bodygroups = { {11, 2} } },

    ["eft_ub_svds_std"] = { Bodygroups = { {8, 1} } },
    ["eft_ub_svds_sag"] = { Bodygroups = { {8, 2} } },

    ["eft_hg_svds_mod"] = { Bodygroups = { {9, 4} } },
--    ["eft_hg_svd_std"] = { Bodygroups = { {9, 1} } },
    ["eft_hg_svds_std"] = { Bodygroups = { {9, 2} } },
    ["eft_hg_svds_xrs"] = { Bodygroups = { {9, 3} } },
    ["eft_hg_svds_mod2"] = { Bodygroups = { {10, 1} } },

    ["eft_svds_pgrip_std"] = { Bodygroups = { {12, 1} } },

    ["eft_svds_rec_std"] = { Bodygroups = { {13, 1} } },
    ["eft_svds_rec_cut"] = { Bodygroups = { {13, 2} } },

    ["eft_svd_stock_std"] = { Bodygroups = { {12, 1} } },
    ["eft_svd_stock_tigr"] = { Bodygroups = { {12, 2} } },
    ["eft_svd_stock_plastic"] = { Bodygroups = { {12, 3} } },
    ["eft_svd_stock_adapter"] = { Bodygroups = { {12, 4} } },

    ["eft_svds_mag_10"] = { Bodygroups = { {14, 1} } },
    ["eft_svds_mag_20"] = { Bodygroups = { {14, 2} } },
}


SWEP.Attachments = {
    {
        PrintName = "Barrel",
        Category = "eft_svds_barrel",
        Bone = "mod_barrel",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Installed = "eft_svds_barrel_std",
        SubAttachments = {
            {
                Installed = "eft_svds_gas_std"
            },
            {},
            {
                Installed = "eft_muzzle_svd_std",
                SubAttachments = {
                    {
                        Installed = "eft_svds_fs_std"
                    }
                }
            }
        }
    },
    {
        PrintName = "Dovetail",
        Category = "eft_mount_dovetail",
        Bone = "mod_mount_000",
        Pos = Vector(0.05, 1.05, 0.49),
        Ang = Angle(0, -90, 0),
        ExcludeElements = {"railedcover", "nodovetail"},
    },
    {
        PrintName = "Upper band",
        Category = "eft_svds_ub",
        Bone = "mod_reciever",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Installed = "eft_ub_svds_std",
        SubAttachments = {
            {
                Installed = "eft_svds_rs_std"
            },
            {
                Installed = "eft_hg_svd_std"
            },
        }
    },
    --[[
    {
        PrintName = "Pistol grip",
        Category = {"eft_svds_pgrip", "eft_ak_grip"},
        Bone = "mod_pistol_grip",
        Pos = Vector(0, 0.1, -0.13),
        Ang = Angle(0, 0, 0),
        Installed = "eft_svds_pgrip_std",
    },]]
    {
        PrintName = "Dust cover",
        Category = "eft_svds_rec",
        Bone = "mod_reciever",
        Pos = Vector(0, -10, -0.5),
        Ang = Angle(0, 0, 0),
        Installed = "eft_svds_rec_std",
    },
    {
        PrintName = "Stock",
        Category = "eft_svd_stock",
        Bone = "mod_stock",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Installed = "eft_svd_stock_std",
    },
    {
        PrintName = "Mag", 
        Category = "eft_svds_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_svds_mag_10"
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_762x54r",
        Integral = "eft_ammo_762x54r_ps_gzh",
        Installed = "eft_ammo_762x54r_ps_gzh",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 1, -3),
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_svds"},
        Bone = "weapon",
        Pos = Vector(0, 5, -5),
        Ang = Angle(0, -90, 0),
        -- CosmeticOnly = true,
    },
}