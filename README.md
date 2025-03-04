# HelperCMD
**Pentru a descarca modul, apasati pe butonul <>Code, iar apoi pe Download ZIP**
#


Acesta este un mod **CLEO** open-source facut pentru staff-ul serverului de SAMP OG B-Hood

### **Lista cu comenzi:**

- **/hcmd** sau **/helpercmd** meniu cu comenzile
- **/hconfirm** toggle pentru functionalitatea de confirmare

### Instalare

Pentru instalare descarcati si copiati **HelperCMD.cs** in folderul **CLEO** (Ignorati fisierele Source code, sunt generate automat)

<details>
<summary>Codul sursa:</summary>

```cpp
{$CLEO}
{$INCLUDE SF}
{$USE CLEO+}
{$USE file}
{$USE ini}
{$USE bitwise}

0000:                  
repeat
wait 0
until SAMP.Available()

:HCMD
03A4: name_thread 'HCMD'

const
    __BLU = 0x268efc
    __LTB = 0x2db7f7
    __RED = 0xff2b2b
    __YLW = 0xffeb0f
    __WHT = 0xffffff
    __GRN = 0x4ae072
    __GRA = 0xcfcfcf
    __PUR = 0xc515e8
    __LIM = 0x83D47D
end

wait 200
chatmsg "{%x}[Helper CMD] {%x}Author {%x}kerva & iAdriaN, {%x}has loaded!" -1 __BLU __WHT __PUR __WHT
chatmsg "{%x}Foloseste {%x}[/helpercmd] {%x}sau {%x}[/hcmd]{%x} pentru a deschide meniul." -1 __WHT __LIM __WHT __LIM __WHT

0B34: samp register_client_command "helpercmd" to_label @helpercmd
0B34: samp register_client_command "hcmd" to_label @helpercmd

0B34: samp register_client_command "hconfirm" to_label @hconfirm

0BE3: raknet setup_incoming_rpc_hook @chatlines_hook 

//Cum faci chestii
0B34: samp register_client_command "cumogp" to_label @cumogp
0B34: samp register_client_command "cumpp" to_label @cumpp
0B34: samp register_client_command "cumrp" to_label @cumrp
0B34: samp register_client_command "cumrbp" to_label @cumrbp
0B34: samp register_client_command "cumrob" to_label @cumrob
0B34: samp register_client_command "cumbani" to_label @cumbani
0B34: samp register_client_command "cumats" to_label @cumats
0B34: samp register_client_command "cumad" to_label @cumad
0B34: samp register_client_command "cummasina" to_label @cummasina
0B34: samp register_client_command "cumfill" to_label @cumfill
0B34: samp register_client_command "cumlights" to_label @cumlights
0B34: samp register_client_command "cumculoare" to_label @cumculoare
0B34: samp register_client_command "cumculoareh" to_label @cumculoareh
0B34: samp register_client_command "cumhidd" to_label @cumhidd
0B34: samp register_client_command "cumlevel" to_label @cumlevel
0B34: samp register_client_command "cumchat" to_label @cumchat
0B34: samp register_client_command "cumbandana" to_label @cumbandana
0B34: samp register_client_command "cumgym" to_label @cumgym
0B34: samp register_client_command "anim" to_label @anim
0B34: samp register_client_command "face" to_label @face
0B34: samp register_client_command "tasta" to_label @tasta

//Ce fac cu?
0B34: samp register_client_command "ceogp" to_label @ceogp
0B34: samp register_client_command "cerob" to_label @cerob
0B34: samp register_client_command "cemats" to_label @cemats
0B34: samp register_client_command "cedrugs" to_label @cedrugs
0B34: samp register_client_command "cerace" to_label @cerace

//Licente
0B34: samp register_client_command "cumlic" to_label @cumlic
0B34: samp register_client_command "licgun" to_label @licgun
0B34: samp register_client_command "licfly" to_label @licfly
0B34: samp register_client_command "licboat" to_label @licboat
0B34: samp register_client_command "licall" to_label @licall
0B34: samp register_client_command "licdrive" to_label @licdrive

//Joburi
0B34: samp register_client_command "dailyjob" to_label @dailyjob
0B34: samp register_client_command "topworker" to_label @topworker
0B34: samp register_client_command "profitabil" to_label @profitabil
0B34: samp register_client_command "munceste" to_label @munceste
0B34: samp register_client_command "skill" to_label @skill
0B34: samp register_client_command "sfarm" to_label @sfarm
0B34: samp register_client_command "struck" to_label @struck
0B34: samp register_client_command "skilltruck" to_label @skilltruck
0B34: samp register_client_command "remorca" to_label @remorca
0B34: samp register_client_command "slumber" to_label @slumber
0B34: samp register_client_command "sgarbage" to_label @sgarbage
0B34: samp register_client_command "spizza" to_label @spizza
0B34: samp register_client_command "scutere" to_label @scutere
0B34: samp register_client_command "scurier" to_label @scurier
0B34: samp register_client_command "sfork" to_label @sfork
0B34: samp register_client_command "sbus" to_label @sbus
0B34: samp register_client_command "sfish" to_label @sfish
0B34: samp register_client_command "sair" to_label @sair
0B34: samp register_client_command "sboat" to_label @sboat
0B34: samp register_client_command "barci" to_label @barci
0B34: samp register_client_command "peste" to_label @peste
0B34: samp register_client_command "faina" to_label @faina

//Utile
0B34: samp register_client_command "explicit" to_label @explicit
0B34: samp register_client_command "naiurea" to_label @naiurea
0B34: samp register_client_command "nprost" to_label @nprost
0B34: samp register_client_command "nm" to_label @nm
0B34: samp register_client_command "suport" to_label @suport
0B34: samp register_client_command "poti" to_label @poti
0B34: samp register_client_command "nupoti" to_label @nupoti
0B34: samp register_client_command "nudetinem" to_label @nudetinem
0B34: samp register_client_command "nuexista" to_label @nuexista
0B34: samp register_client_command "bug" to_label @bug
0B34: samp register_client_command "post" to_label @post
0B34: samp register_client_command "afla" to_label @afla
0B34: samp register_client_command "mrp" to_label @mrp
0B34: samp register_client_command "hd" to_label @hd
0B34: samp register_client_command "ajut" to_label @ajut
0B34: samp register_client_command "sv" to_label @sv

//Altele
0B34: samp register_client_command "populara" to_label @populara
0B34: samp register_client_command "inalta" to_label @inalta
0B34: samp register_client_command "vending" to_label @vending
0B34: samp register_client_command "amenzi" to_label @amenzi
0B34: samp register_client_command "conturi" to_label @conturi
0B34: samp register_client_command "taxi" to_label @taxi
0B34: samp register_client_command "culori" to_label @culori
0B34: samp register_client_command "flevel" to_label @flevel
0B34: samp register_client_command "dutepanel" to_label @dutepanel
0B34: samp register_client_command "vezireg" to_label @vezireg
0B34: samp register_client_command "calcula" to_label @calcula
0B34: samp register_client_command "deschis" to_label @deschis
0B34: samp register_client_command "update" to_label @update

//Sisteme importante
0B34: samp register_client_command "paintball" to_label @paintball
0B34: samp register_client_command "racerecord" to_label @racerecord
0B34: samp register_client_command "questzilnice" to_label @questzilnice
0B34: samp register_client_command "casinolimit" to_label @casinolimit
0B34: samp register_client_command "breferal" to_label @breferal
0B34: samp register_client_command "masinavip" to_label @masinavip
0B34: samp register_client_command "realizarie" to_label @realizarie
0B34: samp register_client_command "realizarim" to_label @realizarim
0B34: samp register_client_command "realizarih" to_label @realizarih
0B34: samp register_client_command "contog" to_label @contog
0B34: samp register_client_command "contpremium" to_label @contpremium
0B34: samp register_client_command "numecolor" to_label @numecolor

//Masini
0B34: samp register_client_command "ds" to_label @ds
0B34: samp register_client_command "nods" to_label @nods
0B34: samp register_client_command "costa" to_label @costa
0B34: samp register_client_command "viteza" to_label @viteza
0B34: samp register_client_command "km" to_label @km
0B34: samp register_client_command "stock" to_label @stock
0B34: samp register_client_command "decis" to_label @decis
0B34: samp register_client_command "masinaieftina" to_label @masinaieftina
0B34: samp register_client_command "vehiculieftin" to_label @vehiculieftin
0B34: samp register_client_command "masinascumpa" to_label @masinascumpa

//Giftbox
0B34: samp register_client_command "pgift" to_label @pgift
0B34: samp register_client_command "cumgift" to_label @cumgift
0B34: samp register_client_command "giftdelay" to_label @giftdelay
0B34: samp register_client_command "giftsec" to_label @giftsec
0B34: samp register_client_command "calendar" to_label @calendar
0B34: samp register_client_command "specialquest" to_label @specialquest
0B34: samp register_client_command "questparty" to_label @questparty
0B34: samp register_client_command "sidequest" to_label @sidequest
0B34: samp register_client_command "sanse" to_label @sanse
0B34: samp register_client_command "sansa" to_label @sansa
0B34: samp register_client_command "sansamare" to_label @sansamare

//Local variables
string var_vname 
string var_vspeed
string var_vprice
string var_vstock
string var_auxstring
string var_param
int var_vstockint
int var_button
int var_item
int var_ds_req 
int var_ds_rtype 
int var_ds_obtained
int var_index                            
int var_confirmation
int var_dummy
int var_dummy2
string var_dsmessage              
string var_preview1
string var_preview2     
int var_previewlen                 
string var_question         
int var_showdialog          
int var_qmessage = 0 
int var_not_used
int var_auxlen
string var_extract
string var_result

const
    DS_REQ_EXISTING         = -5
    DS_REQ_OTHER            = -6
	DS_OBTAINED 			= -7       	    
    DS_RTYPE_FULL           = -8
    DS_RTYPE_PRICE          = -9
    DS_RTYPE_SPEED          = -10
    DS_RTYPE_STOCK          = -11
    DS_RTYPE_VEHIEFTIN      = -12 
    DS_RTYPE_MASIEFTINA     = -13
    DS_RTYPE_MASSCUMPA      = -14
    DIALOG_HIDDEN           = -18
    DIALOG_VISIBLE          = -19
end

alloc var_auxstring 256
0AA8: call_function_method 6946896 struct 12694336 num_params 1 pop 0 'CRED205' var_auxstring 
0AA5: call 7439872 num_params 2 pop 2 var_auxstring "HelperCMD confirmation enabled, [/hconfirm]"
free var_auxstring

if 0B00: delete_file "cleo\cleo_saves\Helper CMD - Additional data.ini"
then
end

if 0AAB: file_exists "cleo\cleo_saves\Helper CMD - Settings.ini"
then
    0AF0: var_confirmation = get_int_from_ini_file "cleo\cleo_saves\Helper CMD - Settings.ini" section "HelperCMD" key "confirmation"
else
    0AF1: write_int 1 to_ini_file "cleo\cleo_saves\Helper CMD - Settings.ini" section "HelperCMD" key "confirmation"
    var_confirmation = 1
end

gosub @create_additional_list    

//chatmsg "created additional list succesfully, going to main" -1
var_showdialog = DIALOG_HIDDEN
var_qmessage = 0

:main_loop
while true
	wait 0
	
    if var_confirmation == 1
    then
        03F0: enable_text_draw 1
        033F: set_text_draw_letter_size 0.22 0.9 
        081C: draw_text_outline 1 RGBA 0 0 0 255 
        0340: set_text_draw_RGBA 65 255 144 255 
        0349: set_text_draw_font 1
        03E4: set_text_draw_align_right 1 
        033E: set_draw_text_position 180.0 425.0 GXT 'CRED205'
    end
    
    if not var_preview1 == #NULL
    then
        0C17: var_previewlen = strlen var_preview1
        if var_previewlen > 0
        then
            if var_confirmation == 1
            then
                if var_showdialog == DIALOG_HIDDEN
                then
                    //chatmsg "entered if statement" -1
                    alloc $dialog 400
                    if var_qmessage == 2
                    then
                        if not var_preview2 == #NULL
                        then
                            0AD3: $dialog = format "{ffff00}%s%c%c%c%c{ffffff}%s%c%c%s%c" var_question 0xD 0xA 0xD 0xA var_preview1 0xD 0xA var_preview2 0x0
                        else
                            0AD3: $dialog = format "{ffff00}%s%c%c%c%c{ffffff}%s%c" var_question 0xD 0xA 0xD 0xA var_preview1 0x0
                        end                            
                    else
                        if not var_preview2 == #NULL
                        then
                            0AD3: $dialog = format "{ffff00}%s%c%c%c%c{ffffff}%s%c%c%s%c" "NO QUESTION FOUND" 0xD 0xA 0xD 0xA var_preview1 0xD 0xA var_preview2 0x0
                        else
                            0AD3: $dialog = format "{ffff00}%s%c%c%c%c{ffffff}%s%c" "NO QUESTION FOUND" 0xD 0xA 0xD 0xA var_preview1 0x0
                        end
                    end
                    SAMP.ShowDialog(4447, "{20B2AA}Answer question", $dialog, "{32CD32}Continue", "{CC5500}Cancel", 0) 
                    free $dialog
                    var_showdialog = DIALOG_VISIBLE
                end
            else
                say var_preview1
                var_preview1 = 0
                //0C24: strncpy destination var_preview1 source var_preview1 size 0
                //free var_preview1
                if not var_preview2 == #NULL
                then
                    0C17: var_previewlen = strlen var_preview2
                    if var_previewlen > 0
                    then
                        wait 2000
                        say var_preview2
                        var_preview2 = 0
                        //0C24: strncpy destination var_preview2 source var_preview2 size 0
                        //free var_preview2
                    end
                end
            end 
        end
    end
    
    if
    0B3C: 4447 var_button var_item 0
    then
        if var_button == 1
        then
            say var_preview1
            var_preview1 = 0
            //0C24: strncpy destination var_preview1 source var_preview1 size 0
            //free var_preview1
            if not var_preview2 == #NULL
            then
                0C17: var_previewlen = strlen var_preview2
                if var_previewlen > 0
                then
                    wait 2000
                    say var_preview2
                    var_preview2 = 0
                    //0C24: strncpy destination var_preview2 source var_preview2 size 0
                    //free var_preview2
                end
            end
            var_showdialog = DIALOG_HIDDEN
            var_question = 0
            //free var_question
            var_qmessage = 0
        end
        if var_button == 0
        then
            //0C24: strncpy destination var_preview1 source var_preview1 size 0
            var_preview1 = 0
            //free var_preview1
            if not var_preview2 == #NULL
            then
                0C17: var_previewlen = strlen var_preview2
                if var_previewlen > 0
                then
                    var_preview2 = 0
                    //0C24: strncpy destination var_preview2 source var_preview2 size 0
                    //free var_preview2
                end
            end
            chatmsg "{%x}   {%x}Message was not sent{%x}  " -1 __RED __WHT __RED
            var_showdialog = DIALOG_HIDDEN
        end
    end
    
    
    if var_ds_req == DS_REQ_OTHER
    then
        gosub @other_vehicles
        var_ds_req = 0
    end
    
    if var_ds_obtained == DS_OBTAINED
    then
        var_ds_obtained = 0
        chatmsg "Extracting from: %s" -1 var_dsmessage
        gosub @printds
        //chatmsg "came back to main loop" -1
        //free var_dsmessage
        //wait 1000
        //chatmsg "freed var_extract" -1
        //free var_param
        //chatmsg "freed var_param" -1
        
        //chatmsg "vname %s vprice %s vspeed %s vstock %s" -1 var_vname var_vprice var_vspeed var_vstock
        
        if var_ds_rtype == DS_RTYPE_FULL
        then
            if 0AD4: var_not_used = scan_string var_vstock format "%d" var_vstockint
            then
                if var_vstockint == 0
                then
                    alloc var_preview1 256
                    0AD3: var_preview1 = format "/nre %scosta%s in 'Dealership', atinge viteza maxima de %skm/h si nu se mai afla in stock." var_vname var_vprice var_vspeed
                end
                if var_vstockint == 1
                then
                    alloc var_preview1 256
                    0AD3: var_preview1 = format "/nre %scosta%s in 'Dealership', atinge viteza maxima de %skm/h si mai este %s in stock." var_vname var_vprice var_vspeed var_vstock
                end
                if var_vstockint > 1
                then
                    alloc var_preview1 256
                    0AD3: var_preview1 = format "/nre %scosta%s in 'Dealership', atinge viteza maxima de %skm/h si mai sunt %s in stock." var_vname var_vprice var_vspeed var_vstock 
                end
                if var_vstockint == -1
                then
                    alloc var_preview1 256
                    0AD3: var_preview1 = format "/nre %scosta %s 'Premium Points' in [/shop] si atinge viteza maxima de %skm/h." var_vname var_vprice var_vspeed
                end
                if var_vstockint == -2
                then
                    alloc var_preview1 256
                    0AD3: var_preview1 = format "/nre %sa fost oferit ca premiu la 'Giftbox' si atinge viteza maxima de %skm/h." var_vname var_vspeed
                end
            end 
            var_ds_rtype = 0
        end
        
        if var_ds_rtype == DS_RTYPE_PRICE
        then
            if
            0C14: strcmp string1 var_vprice string2 "-1"
            then
                alloc var_preview1 256
                0AD3: var_preview1 = format "/nre Acel vehicul nu se regaseste in 'Dealership'."
            else
                if 0C14: strcmp string1 var_vstock string2 "-1"
                then
                    alloc var_preview1 256
                    0AD3: var_preview1 = format "/nre Acel vehicul costa %s 'Premium Points' in [/shop]." var_vprice
                else
                    alloc var_preview1 256
                    0AD3: var_preview1 = format "/nre Acel vehicul costa%s in 'Dealership'." var_vprice
                end
            end
            var_ds_rtype = 0
        end
        
        if var_ds_rtype == DS_RTYPE_STOCK                                               
        then
            if 0AD4: var_not_used = scan_string var_vstock format "%d" var_vstockint
            then
                if var_vstockint == 0
                then
                    alloc var_preview1 256
                    0AD3: var_preview1 = format "/nre Acel model nu se mai afla in stock."
                else
                    if var_vstockint == 1
                    then
                        alloc var_preview1 256
                        0AD3: var_preview1 = format "/nre Mai exista un singur model pentru %sin stock." var_vname
                    else
                        if var_vstockint == -1
                        then    
                            alloc var_preview1 256
                            0AD3: var_preview1 = format "/nre Vehiculele din [/shop] au stock nelimitat."
                        else
                            if var_vstockint == -2
                            then
                                alloc var_preview1 256
                                0AD3: var_preview1 = format "/nre Nu exista stock pentru acel vehicul, a fost oferit ca si premiu la 'Giftbox'."
                            else
                                if var_vstockint >= 20
                                then
                                    alloc var_preview1 256
                                    0AD3: var_preview1 = format "/nre Mai exista %s de modele pentru %sin stock." var_vstock var_vname
                                else
                                    alloc var_preview1 256
                                    0AD3: var_preview1 = format "/nre Mai exista %s modele pentru %sin stock." var_vstock var_vname
                                end
                            end
                        end
                    end
                end
            end
            var_ds_rtype = 0
        end
        
        if var_ds_rtype == DS_RTYPE_SPEED
        then
            alloc var_preview1 256
            0AD3: var_preview1 = format "/nre Acel vehicul atinge viteza maxima de %skm/h." var_vspeed
            var_ds_rtype = 0
        end
        
        if var_ds_rtype == DS_RTYPE_VEHIEFTIN
        then
            if
            0C14: strcmp string1 var_vstock string2 "0"
            then
                alloc var_preview1 256
                0AD3: var_preview1 = format "/nre %seste cel mai ieftin, acesta costa%s in 'Dealership', atinge viteza maxima de %skm/h si nu se mai afla in stock." var_vname var_vprice var_vspeed
            else
                alloc var_preview1 256
                0AD3: var_preview1 = format "/nre %seste cel mai ieftin, acesta costa%s in 'Dealership', atinge viteza maxima de %skm/h si mai sunt %s in stock." var_vname var_vprice var_vspeed var_vstock
            end
            var_ds_rtype = 0
        end
        
        if var_ds_rtype == DS_RTYPE_MASIEFTINA
        then
            if
            0C14: strcmp string1 var_vstock string2 "0"
            then
                alloc var_preview1 256
                0AD3: var_preview1 = format "/nre %seste cea mai ieftina, costa%s in 'Dealership', atinge viteza maxima de %skm/h si nu se mai afla in stock." var_vname var_vprice var_vspeed
            else
                alloc var_preview1 256
                0AD3: var_preview1 = format "/nre %seste cea mai ieftina, costa%s in 'Dealership', atinge viteza maxima de %skm/h si mai sunt %s in stock." var_vname var_vprice var_vspeed var_vstock
            end
            var_ds_rtype = 0
        end
        
        if var_ds_rtype == DS_RTYPE_MASSCUMPA
        then
            if
            0C14: strcmp string1 var_vstock string2 "0"
            then
                alloc var_preview1 256
                0AD3: var_preview1 = format "/nre %seste cea mai scumpa, costa%s in 'Dealership', atinge viteza maxima de %skm/h si nu se mai afla in stock." var_vname var_vprice var_vspeed
            else
                alloc var_preview1 256
                0AD3: var_preview1 = format "/nre %seste cea mai scumpa, costa%s in 'Dealership', atinge viteza maxima de %skm/h si mai sunt %s in stock." var_vname var_vprice var_vspeed var_vstock
            end
            var_ds_rtype = 0
        end
		free var_vname
		free var_vprice
		free var_vspeed
		free var_vstock
        wait 50
    end
	
    if
    0B3C: 8888 var_button var_item 0
    then
        if and 
        var_button == 1
        var_item == 0
        then    
            gosub @dialog_cum
        end
        
        if and 
        var_button == 1
        var_item == 1
        then
            gosub @dialog_ce
        end
        
        if and
        var_button == 1
        var_item == 2
        then
            gosub @dialog_licente
        end
        
        if and
        var_button == 1
        var_item == 3
        then
            gosub @dialog_joburi
        end
        
        if and
        var_button == 1
        var_item == 4
        then
            gosub @dialog_utile
        end
        
        if and
        var_button == 1
        var_item == 5
        then
            gosub @dialog_altele
        end
        
        if and
        var_button == 1
        var_item == 6
        then
            gosub @dialog_sisteme_importante
        end
        
        if and
        var_button == 1
        var_item == 7
        then
            gosub @dialog_masini
        end
        
        if and
        var_button == 1
        var_item == 8
        then
            gosub @dialog_giftbox
        end
    end
    
    if
    0B3C: 9999 var_button var_item 0
    then
        if or
        var_button == 0
        var_button == 1
        then
            gosub @dialog_main_menu
        end
    end  
end

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:dialog_main_menu
alloc 0@ 10000
0AC6: 0@ = label @dialog_text_main_menu offset
SAMP.ShowDialog(8888, "{20B2AA}Informatii Helper CMD by kerva & iAdriaN", 0@, "{32CD32}Alege", "{CC5500}Inchide", 2)
free 0@
return

:dialog_text_main_menu
hex
7B 39 38 66 62 39 38 7D 28 7B 66 66 66 66 66 66 7D 31 7B 39 38 66 62 39 38 7D 29 7B 66 66 66 66 66 66 7D 20 20 43 6F 6D 65 6E 7A 69 20 74 69 70 3A 20 43 75 6D 20 66 61 63 3F 0A 7B 39 38 66 62 39 38 7D 28 7B 66 66 66 66 66 66 7D 32 7B 39 38 66 62 39 38 7D 29 7B 66 66 66 66 66 66 7D 20 20 43 6F 6D 65 6E 7A 69 20 74 69 70 3A 20 43 65 20 66 61 63 20 63 75 3F 20 2F 20 43 65 20 65 73 74 65 3F 0A 7B 39 38 66 62 39 38 7D 28 7B 66 66 66 66 66 66 7D 33 7B 39 38 66 62 39 38 7D 29 7B 66 66 66 66 66 66 7D 20 20 4C 69 63 65 6E 74 65 0A 7B 39 38 66 62 39 38 7D 28 7B 66 66 66 66 66 66 7D 34 7B 39 38 66 62 39 38 7D 29 7B 66 66 66 66 66 66 7D 20 20 4A 6F 62 75 72 69 0A 7B 39 38 66 62 39 38 7D 28 7B 66 66 66 66 66 66 7D 35 7B 39 38 66 62 39 38 7D 29 7B 66 66 66 66 66 66 7D 20 20 55 74 69 6C 65 0A 7B 39 38 66 62 39 38 7D 28 7B 66 66 66 66 66 66 7D 36 7B 39 38 66 62 39 38 7D 29 7B 66 66 66 66 66 66 7D 20 20 41 6C 74 65 6C 65 0A 7B 39 38 66 62 39 38 7D 28 7B 66 66 66 66 66 66 7D 37 7B 39 38 66 62 39 38 7D 29 7B 66 66 66 66 66 66 7D 20 20 53 69 73 74 65 6D 65 20 69 6D 70 6F 72 74 61 6E 74 65 0A 7B 39 38 66 62 39 38 7D 28 7B 66 66 66 66 66 66 7D 38 7B 39 38 66 62 39 38 7D 29 7B 66 66 66 66 66 66 7D 20 20 4D 61 73 69 6E 69 0A 7B 39 38 66 62 39 38 7D 28 7B 66 66 66 66 66 66 7D 39 7B 39 38 66 62 39 38 7D 29 7B 66 66 66 66 66 66 7D 20 20 47 69 66 74 62 6F 78 20 28 61 63 74 69 76 29 00
end

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:dialog_cum
alloc 0@ 10000
0AC6: 0@ = label @dialog_text_cum offset
SAMP.ShowDialog(9999, "{20B2AA}Comenzi tip: Cum fac?", 0@, "{32CD32}Inapoi", "", 0)
free 0@
return

:dialog_text_cum
hex
7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 6F 67 70 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 75 6D 20 70 6F 74 69 20 66 61 63 65 20 72 6F 73 74 20 64 65 20 4F 47 20 50 6F 69 6E 74 73 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 70 70 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 75 6D 20 70 6F 74 69 20 66 61 63 65 20 72 6F 73 74 20 64 65 20 50 72 65 6D 69 75 6D 20 50 6F 69 6E 74 73 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 72 70 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 75 6D 20 70 6F 74 69 20 66 61 63 65 20 72 6F 73 74 20 64 65 20 52 65 73 70 65 63 74 20 50 6F 69 6E 74 73 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 72 62 70 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 75 6D 20 70 6F 74 69 20 66 61 63 65 20 72 6F 73 74 20 64 65 20 52 6F 62 20 50 6F 69 6E 74 73 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 72 6F 62 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 75 6D 20 64 61 69 20 72 6F 62 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 62 61 6E 69 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 75 6D 20 70 6F 74 69 20 66 61 63 65 20 72 6F 73 74 20 64 65 20 62 61 6E 69 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 61 74 73 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 75 6D 20 70 6F 74 69 20 66 61 63 65 20 72 6F 73 74 20 64 65 20 6D 61 74 65 72 69 61 6C 65 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 61 64 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 75 6D 20 70 6F 74 69 20 70 75 6E 65 20 75 6E 20 5B 2F 61 64 5D 20 73 69 20 63 65 72 69 6E 74 65 6C 65 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 6D 61 73 69 6E 61 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 6F 74 69 20 6F 62 74 69 6E 65 20 6D 61 73 69 6E 61 20 64 69 6E 20 44 53 2C 20 2F 73 68 6F 70 20 73 61 75 20 64 65 20 6C 61 20 70 6C 61 79 65 72 69 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 66 69 6C 6C 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 6D 65 74 6F 64 65 6C 65 20 64 65 20 5B 2F 66 69 6C 6C 5D 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 6C 69 67 68 74 73 5D 7B 46 46 46 46 46 46 7D 20 2D 20 5B 2F 6C 69 67 68 74 73 5D 20 73 61 75 20 43 54 52 4C 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 63 75 6C 6F 61 72 65 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 63 75 6D 20 73 61 20 61 70 6C 69 63 65 20 63 75 6C 6F 61 72 65 61 20 70 65 20 6D 61 73 69 6E 61 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 63 75 6C 6F 61 72 65 68 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 75 6D 20 73 65 20 61 70 6C 69 63 61 20 68 69 64 64 65 6E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 68 69 64 64 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 75 6D 20 70 6F 74 69 20 66 61 63 65 20 72 6F 73 74 20 64 65 20 68 69 64 64 65 6E 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 6C 65 76 65 6C 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 75 6D 20 66 61 63 65 20 6C 65 76 65 6C 20 73 69 20 64 65 20 63 65 20 61 72 65 20 6E 65 76 6F 69 65 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 63 68 61 74 5D 7B 46 46 46 46 46 46 7D 20 2D 20 46 6F 6C 6F 73 65 73 74 65 20 5B 2F 66 6F 6E 74 73 69 7A 65 5D 2C 20 72 65 73 70 65 63 74 69 76 20 5B 2F 70 61 67 65 73 69 7A 65 5D 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 62 61 6E 64 61 6E 61 5D 7B 46 46 46 46 46 46 7D 20 2D 20 50 6F 74 69 20 61 63 68 69 7A 69 74 69 6F 6E 61 20 63 75 20 4F 47 50 20 64 69 6E 20 42 69 6E 63 6F 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 67 79 6D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 6F 74 69 20 73 61 20 69 74 69 20 73 63 68 69 6D 62 69 20 73 74 69 6C 75 6C 20 64 65 20 6C 75 70 74 61 20 6C 61 20 27 47 59 4D 27 20 63 75 20 63 6F 6D 61 6E 64 61 2E 2E 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 61 6E 69 6D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 50 65 6E 74 72 75 20 61 20 76 65 64 65 61 20 74 6F 61 74 65 20 61 6E 69 6D 61 74 69 69 6C 65 20 66 6F 6C 6F 73 65 73 74 65 20 63 6F 6D 61 6E 64 61 20 5B 2F 61 6E 69 6D 6C 69 73 74 5D 0A 7B 39 38 46 42 39 38 7D 5B 2F 66 61 63 65 20 7B 38 37 43 45 45 42 7D 3C 63 6F 6D 61 6E 64 61 3E 7B 39 38 46 42 39 38 7D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 50 6F 74 69 20 66 61 63 65 20 61 63 65 73 74 20 6C 75 63 72 75 20 74 61 73 74 61 6E 64 20 63 6F 6D 61 6E 64 61 20 5B 2F 3C 63 6F 6D 61 6E 64 61 3E 5D 0A 7B 39 38 46 42 39 38 7D 5B 2F 74 61 73 74 61 20 7B 38 37 43 45 45 42 7D 3C 74 61 73 74 61 3E 7B 39 38 46 42 39 38 7D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 50 6F 74 69 20 66 61 63 65 20 61 63 65 73 74 20 6C 75 63 72 75 20 61 70 61 73 61 6E 64 20 74 61 73 74 61 20 27 3C 74 61 73 74 61 3E 27 00
end

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:dialog_ce
alloc 0@ 10000
0AC6: 0@ = label @dialog_text_ce offset
SAMP.ShowDialog(9999, "{20B2AA}Comenzi tip: Ce fac cu? / Ce este?", 0@, "{32CD32}Inapoi", "", 0)
free 0@
return

:dialog_text_ce
hex
7B 39 38 46 42 39 38 7D 5B 2F 63 65 6F 67 70 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 65 20 73 75 6E 74 20 4F 47 20 50 6F 69 6E 74 73 2D 75 72 69 6C 65 20 73 69 20 63 75 6D 20 6C 65 20 66 6F 6C 6F 73 65 73 74 69 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 65 72 6F 62 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 65 72 69 6E 74 65 6C 65 20 70 65 6E 74 72 75 20 61 20 64 61 20 72 6F 62 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 65 6D 61 74 73 5D 7B 46 46 46 46 46 46 7D 20 2D 20 69 69 20 73 70 75 69 20 63 65 20 70 6F 61 74 65 20 66 61 63 65 20 63 75 20 6D 61 74 65 72 69 61 6C 65 6C 65 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 65 64 72 75 67 73 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 65 20 70 6F 74 69 20 66 61 63 65 20 63 75 20 64 72 75 67 73 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 65 72 61 63 65 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 72 69 6D 65 73 74 69 20 62 61 6E 69 69 20 70 75 73 69 20 6C 61 20 63 6F 6D 75 6E 2C 20 64 61 72 20 65 20 70 72 65 6D 69 75 20 73 69 20 70 74 20 72 65 63 6F 72 64 75 72 69 2E 00
end

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:dialog_licente
alloc 0@ 10000
0AC6: 0@ = label @dialog_text_licente offset
SAMP.ShowDialog(9999, "{20B2AA}Licente", 0@, "{32CD32}Inapoi", "", 0)
free 0@
return

:dialog_text_licente
hex
7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 6C 69 63 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 6F 74 69 20 64 61 20 2F 73 65 72 76 69 63 65 20 69 6E 73 74 72 75 63 74 6F 72 20 73 69 20 73 61 20 61 73 74 65 70 74 69 20 73 61 20 66 69 69 20 63 6F 6E 74 61 63 74 61 74 20 0A 7B 39 38 46 42 39 38 7D 5B 2F 6C 69 63 67 75 6E 5D 7B 46 46 46 46 46 46 7D 20 2F 20 7B 39 38 46 42 39 38 7D 5B 2F 6C 69 63 66 6C 79 5D 7B 46 46 46 46 46 46 7D 20 2F 20 7B 39 38 46 42 39 38 7D 5B 2F 6C 69 63 62 6F 61 74 5D 7B 46 46 46 46 46 46 7D 20 2D 20 69 69 20 73 70 75 69 20 70 72 65 74 75 72 69 6C 65 20 70 65 6E 74 72 75 20 6C 69 63 65 6E 74 61 20 64 65 20 67 75 6E 20 2F 20 66 6C 79 20 2F 20 73 61 69 6C 69 6E 67 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 6C 69 63 61 6C 6C 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 70 72 65 74 75 6C 20 74 75 74 75 72 6F 72 20 6C 69 63 65 6E 74 65 6C 6F 72 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 6C 69 63 64 72 69 76 65 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 74 61 78 61 20 70 65 6E 74 72 75 20 6C 69 63 65 6E 74 61 20 64 65 20 64 72 69 76 65 2E 00
end

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:dialog_joburi
alloc 0@ 10000
0AC6: 0@ = label @dialog_text_joburi offset
SAMP.ShowDialog(9999, "{20B2AA}Joburi", 0@, "{32CD32}Inapoi", "", 0)
free 0@
return

:dialog_text_joburi
hex
7B 39 38 46 42 39 38 7D 5B 2F 64 61 69 6C 79 6A 6F 62 5D 7B 46 46 46 46 46 46 7D 20 2D 20 75 6E 64 65 20 69 6C 20 67 61 73 65 73 74 69 2C 20 62 65 6E 65 66 69 63 69 69 20 73 69 20 63 61 6E 64 20 73 65 20 73 63 68 69 6D 62 61 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 74 6F 70 77 6F 72 6B 65 72 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 72 65 6D 69 75 6C 2C 20 63 61 6E 64 20 73 65 20 70 72 6F 63 65 73 65 61 7A 61 20 73 69 20 63 75 6D 20 70 6F 74 69 20 70 61 72 74 69 63 69 70 61 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 70 72 6F 66 69 74 61 62 69 6C 5D 7B 46 46 46 46 46 46 7D 20 2D 20 73 70 75 69 20 63 61 72 65 20 65 73 74 65 20 63 65 6C 20 6D 61 69 20 70 72 6F 66 69 74 61 62 69 6C 20 6A 6F 62 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 6D 75 6E 63 65 73 74 65 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 63 61 20 70 6F 61 74 65 20 6C 75 63 72 61 20 63 68 69 61 72 20 65 6C 20 70 65 6E 74 72 75 20 61 20 61 66 6C 61 20 61 63 65 73 74 20 6C 75 63 72 75 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 6B 69 6C 6C 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 65 20 70 72 69 6D 65 73 74 69 20 6C 61 20 53 6B 69 6C 6C 20 55 70 20 6C 61 20 6A 6F 62 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 66 61 72 6D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 74 75 72 65 6C 65 20 6E 65 63 65 73 61 72 65 20 64 65 20 6C 61 20 73 6B 69 6C 6C 20 31 20 70 61 6E 61 20 6C 61 20 36 20 70 65 6E 74 72 75 20 6A 6F 62 2D 75 6C 20 46 61 72 6D 65 72 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 74 72 75 63 6B 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 74 75 72 65 6C 65 20 6E 65 63 65 73 61 72 65 20 64 65 20 6C 61 20 73 6B 69 6C 6C 20 31 20 70 61 6E 61 20 6C 61 20 36 20 70 65 6E 74 72 75 20 6A 6F 62 2D 75 6C 20 54 72 75 63 6B 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 6B 69 6C 6C 74 72 75 63 6B 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 61 6E 64 20 73 69 20 63 65 20 63 75 72 73 65 20 64 65 62 6C 6F 63 68 65 7A 69 20 6C 61 20 54 72 75 63 6B 65 72 20 73 6B 69 6C 6C 20 32 20 26 20 33 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 72 65 6D 6F 72 63 61 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 73 61 20 64 65 7A 61 63 74 69 76 65 7A 65 20 54 6F 67 20 41 74 74 61 63 68 20 70 65 6E 74 72 75 20 61 20 70 75 74 65 61 20 64 65 74 61 73 61 20 72 65 6D 6F 72 63 61 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 6C 75 6D 62 65 72 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 74 75 72 65 6C 65 20 6E 65 63 65 73 61 72 65 20 64 65 20 6C 61 20 73 6B 69 6C 6C 20 31 20 70 61 6E 61 20 6C 61 20 36 20 70 65 6E 74 72 75 20 6A 6F 62 2D 75 6C 20 4C 75 6D 62 65 72 20 4A 61 63 6B 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 67 61 72 62 61 67 65 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 74 75 72 65 6C 65 20 6E 65 63 65 73 61 72 65 20 64 65 20 6C 61 20 73 6B 69 6C 6C 20 31 20 70 61 6E 61 20 6C 61 20 36 20 70 65 6E 74 72 75 20 6A 6F 62 2D 75 6C 20 47 61 72 62 61 67 65 20 4D 61 6E 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 70 69 7A 7A 61 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 74 75 72 65 6C 65 20 6E 65 63 65 73 61 72 65 20 64 65 20 6C 61 20 73 6B 69 6C 6C 20 31 20 70 61 6E 61 20 6C 61 20 36 20 70 65 6E 74 72 75 20 6A 6F 62 2D 75 6C 20 50 69 7A 7A 61 20 42 6F 79 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 63 75 74 65 72 65 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 6E 75 6D 65 6C 65 20 73 63 75 74 65 72 65 6C 6F 72 20 6C 61 20 50 69 7A 7A 61 62 6F 79 20 70 65 6E 74 72 75 20 73 6B 69 6C 6C 20 31 2C 20 33 20 26 20 35 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 63 75 72 69 65 72 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 74 75 72 65 6C 65 20 6E 65 63 65 73 61 72 65 20 64 65 20 6C 61 20 73 6B 69 6C 6C 20 31 20 70 61 6E 61 20 6C 61 20 36 20 70 65 6E 74 72 75 20 6A 6F 62 2D 75 6C 20 43 6F 75 72 69 65 72 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 66 6F 72 6B 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 74 75 72 65 6C 65 20 6E 65 63 65 73 61 72 65 20 64 65 20 6C 61 20 73 6B 69 6C 6C 20 31 20 70 61 6E 61 20 6C 61 20 36 20 70 65 6E 74 72 75 20 6A 6F 62 2D 75 6C 20 46 6F 72 6B 6C 69 66 74 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 62 75 73 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 74 75 72 65 6C 65 20 6E 65 63 65 73 61 72 65 20 64 65 20 6C 61 20 73 6B 69 6C 6C 20 31 20 70 61 6E 61 20 6C 61 20 36 20 70 65 6E 74 72 75 20 6A 6F 62 2D 75 6C 20 42 75 73 20 44 72 69 76 65 72 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 66 69 73 68 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 74 75 72 65 6C 65 20 6E 65 63 65 73 61 72 65 20 64 65 20 6C 61 20 73 6B 69 6C 6C 20 31 20 70 61 6E 61 20 6C 61 20 36 20 70 65 6E 74 72 75 20 6A 6F 62 2D 75 6C 20 46 69 73 68 20 4C 53 20 2F 20 4C 56 20 2F 20 53 46 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 61 69 72 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 74 75 72 65 6C 65 20 6E 65 63 65 73 61 72 65 20 64 65 20 6C 61 20 73 6B 69 6C 6C 20 31 20 70 61 6E 61 20 6C 61 20 36 20 70 65 6E 74 72 75 20 6A 6F 62 2D 75 6C 20 41 69 72 20 45 6D 65 72 67 65 6E 63 79 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 62 6F 61 74 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 74 75 72 65 6C 65 20 6E 65 63 65 73 61 72 65 20 64 65 20 6C 61 20 73 6B 69 6C 6C 20 31 20 70 61 6E 61 20 6C 61 20 36 20 70 65 6E 74 72 75 20 6A 6F 62 2D 75 6C 20 42 6F 61 74 20 54 72 61 6E 73 70 6F 72 74 65 72 0A 7B 39 38 46 42 39 38 7D 5B 2F 62 61 72 63 69 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 6E 75 6D 65 6C 65 20 62 61 72 63 69 6C 6F 72 20 6C 61 20 42 6F 61 74 20 74 72 61 6E 73 70 6F 72 74 65 72 20 70 65 6E 74 72 75 20 73 6B 69 6C 6C 20 31 2C 20 33 20 26 20 35 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 70 65 73 74 65 5D 20 7B 46 46 46 46 46 46 7D 2F 20 7B 39 38 46 42 39 38 7D 5B 2F 66 61 69 6E 61 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 63 61 20 70 65 6E 74 72 75 20 61 20 76 69 6E 64 65 20 70 65 73 74 65 6C 65 20 2F 20 66 61 69 6E 61 20 74 72 65 62 75 69 65 20 73 61 20 6D 65 61 72 67 61 20 6C 61 20 42 75 72 67 65 72 20 2F 20 32 34 2F 37 2E 00
end

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:dialog_utile
alloc 0@ 10000
0AC6: 0@ = label @dialog_text_utile offset
SAMP.ShowDialog(9999, "{20B2AA}Utile", 0@, "{32CD32}Inapoi", "", 0)
free 0@
return

:dialog_text_utile
hex
7B 39 38 46 42 39 38 7D 5B 2F 65 78 70 6C 69 63 69 74 5D 7B 46 46 46 46 46 46 7D 20 2D 20 5B 2F 6E 64 5D 20 69 69 20 73 70 75 69 20 73 61 20 66 69 65 20 6D 61 69 20 65 78 70 6C 69 63 69 74 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 6E 61 69 75 72 65 61 5D 7B 46 46 46 46 46 46 7D 20 2D 20 5B 2F 6E 64 5D 20 6E 20 61 69 75 72 65 61 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 6E 70 72 6F 73 74 5D 7B 46 46 46 46 46 46 7D 20 2D 20 5B 2F 6E 64 5D 20 66 6F 6C 6F 73 65 73 74 65 20 2F 6E 20 64 6F 61 72 20 70 65 6E 74 72 75 20 69 6E 74 72 65 62 61 72 69 20 6C 65 67 61 74 65 20 64 65 20 73 65 72 76 65 72 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 6E 6D 20 7B 38 37 43 45 45 42 7D 3C 69 64 3E 7B 39 38 46 42 39 38 7D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 2F 6E 6D 75 74 65 20 3C 69 64 3E 20 33 30 20 5B 2F 6E 5D 20 61 69 75 72 65 61 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 75 70 6F 72 74 5D 7B 46 46 46 46 46 46 7D 20 2D 20 6E 75 20 6F 66 65 72 69 6D 20 73 75 70 6F 72 74 20 6D 6F 64 75 72 69 6C 6F 72 2C 20 74 65 68 6E 69 63 20 73 61 75 20 70 74 20 76 61 72 69 61 6E 74 61 20 64 65 20 74 65 6C 65 66 6F 6E 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 70 6F 74 69 5D 7B 46 46 46 46 46 46 7D 20 2D 20 64 61 2C 20 70 6F 74 69 20 66 61 63 65 20 61 63 65 73 74 20 6C 75 63 72 75 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 6E 75 70 6F 74 69 5D 7B 46 46 46 46 46 46 7D 20 2D 20 6E 75 20 70 6F 74 69 20 66 61 63 65 20 61 63 65 73 74 20 6C 75 63 72 75 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 6E 75 64 65 74 69 6E 65 6D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 4E 75 20 64 65 74 69 6E 65 6D 20 61 63 65 61 73 74 61 20 69 6E 66 6F 72 6D 61 74 69 65 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 6E 75 65 78 69 73 74 61 5D 7B 46 46 46 46 46 46 7D 20 2D 20 41 63 65 6C 20 73 69 73 74 65 6D 20 6E 75 20 65 78 69 73 74 61 20 70 65 20 73 65 72 76 65 72 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 62 75 67 5D 7B 46 46 46 46 46 46 7D 20 2D 20 64 61 63 61 20 61 20 67 61 73 69 74 20 75 6E 20 62 75 67 20 69 6C 20 70 6F 61 74 65 20 72 61 70 6F 72 74 61 20 70 65 20 5B 2F 70 61 6E 65 6C 5D 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 70 6F 73 74 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 6F 74 69 20 73 61 20 72 65 63 6C 61 6D 69 20 6A 75 63 61 74 6F 72 75 6C 20 70 65 20 5B 2F 70 61 6E 65 6C 5D 20 64 61 63 61 20 61 69 20 64 6F 76 65 7A 69 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 61 66 6C 61 5D 7B 46 46 46 46 46 46 7D 20 2D 20 69 69 20 73 70 75 69 20 63 61 20 70 6F 61 74 65 20 61 66 6C 61 20 63 68 69 61 72 20 65 6C 20 66 61 63 61 6E 64 20 61 63 65 6C 20 6C 75 63 72 75 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 6D 72 70 5D 7B 46 46 46 46 46 46 7D 20 2D 20 65 73 74 65 20 6F 20 70 72 65 73 63 75 72 74 61 72 65 20 70 65 6E 74 72 75 20 2F 6D 79 72 61 70 6F 72 74 0A 7B 39 38 46 42 39 38 7D 5B 2F 68 64 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 72 65 73 63 75 72 74 61 72 65 20 70 65 6E 74 72 75 20 2F 68 64 75 74 79 0A 7B 39 38 46 42 39 38 7D 5B 2F 61 6A 75 74 5D 7B 46 46 46 46 46 46 7D 20 2D 20 7A 69 63 65 20 70 65 20 2F 6C 63 20 27 53 61 6C 75 74 21 20 43 75 20 63 65 20 74 65 20 70 6F 74 20 61 6A 75 74 61 3F 27 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 76 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 72 65 73 63 75 72 74 61 72 65 20 70 65 6E 74 72 75 20 2F 73 6F 6C 76 65 64 00
end

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:dialog_altele
alloc 0@ 10000
0AC6: 0@ = label @dialog_text_altele offset
SAMP.ShowDialog(9999, "{20B2AA}Altele", 0@, "{32CD32}Inapoi", "", 0)
//free 0@
return

:dialog_text_altele
hex
7B 39 38 46 42 39 38 7D 5B 2F 70 6F 70 75 6C 61 72 61 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 63 61 72 65 20 65 73 74 65 20 63 65 61 20 6D 61 69 20 70 6F 70 75 6C 61 72 61 20 66 72 65 63 76 65 6E 74 61 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 69 6E 61 6C 74 61 5D 7B 46 46 46 46 46 46 7D 20 2D 20 69 69 20 73 70 75 69 20 63 61 72 65 20 65 20 63 65 61 20 6D 61 69 20 69 6E 61 6C 74 61 20 63 6C 61 64 69 72 65 0A 7B 39 38 46 42 39 38 7D 5B 2F 76 65 6E 64 69 6E 67 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 6F 74 69 20 67 61 73 69 20 76 65 6E 64 69 6E 67 20 69 6E 20 32 34 2F 37 0A 7B 39 38 46 42 39 38 7D 5B 2F 61 6D 65 6E 7A 69 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 61 72 65 20 73 75 6E 74 20 61 6D 65 6E 7A 69 6C 65 20 73 69 20 63 61 74 20 63 6F 73 74 61 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 6F 6E 74 75 72 69 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 63 75 20 63 61 74 65 20 63 6F 6E 74 75 72 69 20 61 72 65 20 76 6F 69 65 20 63 6F 6E 65 63 74 61 74 20 73 69 6D 75 6C 74 61 6E 0A 7B 39 38 46 42 39 38 7D 5B 2F 74 61 78 69 5D 7B 46 46 46 46 46 46 7D 20 2D 20 50 6F 74 69 20 70 75 6E 65 20 75 6E 20 74 61 78 69 6D 65 74 72 69 73 74 20 73 61 20 74 65 20 64 75 63 61 20 2F 20 63 61 75 74 61 20 70 65 20 69 6E 74 65 72 6E 65 74 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6C 6F 72 69 5D 7B 46 46 46 46 46 46 7D 20 2D 20 69 69 20 73 70 75 69 20 73 61 20 74 61 73 74 65 7A 65 20 5B 2F 63 6F 6C 6F 72 73 5D 20 70 65 6E 74 72 75 20 61 20 76 65 64 65 61 20 74 6F 61 74 65 20 63 75 6C 6F 72 69 6C 65 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 66 6C 65 76 65 6C 20 7B 38 37 43 45 45 42 7D 3C 6C 65 76 65 6C 3E 7B 39 38 46 42 39 38 7D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 61 69 20 6E 65 76 6F 69 65 20 64 65 20 6E 69 76 65 6C 75 6C 20 58 20 70 65 6E 74 72 75 20 61 63 65 61 20 66 61 63 74 69 75 6E 65 20 28 2B 31 35 68 2C 20 61 70 6C 69 63 61 74 69 65 29 0A 7B 39 38 46 42 39 38 7D 5B 2F 64 75 74 65 70 61 6E 65 6C 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 73 61 20 61 63 63 65 73 65 7A 65 20 5B 2F 70 61 6E 65 6C 5D 20 2D 20 53 68 6F 70 20 2D 20 44 65 73 63 72 69 65 72 65 20 70 72 6F 64 75 73 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 76 65 7A 69 72 65 67 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 6F 74 69 20 76 65 72 69 66 69 63 61 20 73 69 6E 67 75 72 20 72 65 67 75 6C 61 6D 65 6E 74 75 6C 20 70 65 20 2F 70 61 6E 65 6C 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 61 6C 63 75 6C 61 5D 7B 46 46 46 46 46 46 7D 20 2D 20 69 69 20 73 70 75 69 20 63 61 20 70 6F 61 74 65 20 63 61 6C 63 75 6C 61 20 63 68 69 61 72 20 65 6C 20 61 63 65 6C 20 6C 75 63 72 75 20 61 76 61 6E 64 20 69 6E 20 76 65 64 65 72 65 20 63 61 20 73 65 72 76 65 72 2D 75 6C 20 61 20 66 6F 73 74 20 64 65 73 63 68 69 73 20 70 65 20 32 36 2E 30 37 2E 32 30 32 34 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 64 65 73 63 68 69 73 5D 7B 46 46 46 46 46 46 7D 20 2D 20 53 65 72 76 65 72 2D 75 6C 20 61 20 66 6F 73 74 20 64 65 73 63 68 69 73 20 70 65 20 32 36 2E 30 37 2E 32 30 32 34 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 75 70 64 61 74 65 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 73 61 20 76 65 72 69 66 69 63 65 20 70 65 20 5B 2F 70 61 6E 65 6C 20 2D 20 55 70 64 61 74 65 73 5D 2E 0A 00
end
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:dialog_sisteme_importante
alloc 0@ 10000
0AC6: 0@ = label @dialog_text_sisteme_importante offset
SAMP.ShowDialog(9999, "{20B2AA}Sisteme importante", 0@, "{32CD32}Inapoi", "", 0)
//free 0@
return

:dialog_text_sisteme_importante
hex
7B 39 38 46 42 39 38 7D 5B 2F 70 61 69 6E 74 62 61 6C 6C 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 65 72 69 6E 74 65 6C 65 20 70 65 6E 74 72 75 20 61 20 6A 75 63 61 20 6C 61 20 70 61 69 6E 74 0A 7B 39 38 46 42 39 38 7D 5B 2F 72 61 63 65 72 65 63 6F 72 64 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 72 69 6D 65 73 74 69 20 63 61 74 65 20 24 35 30 2E 30 30 30 20 73 69 20 31 30 30 20 4F 47 50 20 70 65 6E 74 72 75 20 66 69 65 63 61 72 65 20 63 6F 6E 63 75 72 65 6E 74 0A 7B 39 38 46 42 39 38 7D 5B 2F 71 75 65 73 74 7A 69 6C 6E 69 63 65 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 6C 61 20 63 65 20 6F 72 61 20 73 65 20 72 65 73 74 65 61 7A 61 20 71 75 65 73 74 2D 75 72 69 6C 65 20 7A 69 6C 6E 69 63 65 2E 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 61 73 69 6E 6F 6C 69 6D 69 74 5D 7B 46 46 46 46 46 46 7D 20 2D 20 4C 69 6D 69 74 61 20 73 65 20 72 65 73 65 74 65 61 7A 61 20 6C 75 6E 69 20 6C 61 20 30 37 3A 30 30 2C 20 70 6F 74 69 20 76 65 64 65 61 20 63 75 20 2F 63 61 73 69 6E 6F 0A 7B 39 38 46 42 39 38 7D 5B 2F 62 72 65 66 65 72 61 6C 5D 7B 46 46 46 46 46 46 7D 20 2D 20 62 65 6E 65 66 69 63 69 69 20 72 65 66 65 72 72 61 6C 0A 7B 39 38 46 42 39 38 7D 5B 2F 6D 61 73 69 6E 61 76 69 70 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 63 65 20 62 65 6E 65 66 69 63 69 69 20 75 70 67 72 61 64 65 2D 75 6C 20 56 49 50 20 70 65 20 6D 61 73 69 6E 61 20 0A 7B 39 38 46 42 39 38 7D 5B 2F 72 65 61 6C 69 7A 61 72 69 65 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 72 65 6D 69 69 20 72 65 61 6C 69 7A 61 72 69 20 45 41 53 59 0A 7B 39 38 46 42 39 38 7D 5B 2F 72 65 61 6C 69 7A 61 72 69 6D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 72 65 6D 69 69 20 72 65 61 6C 69 7A 61 72 69 20 4D 45 44 49 55 4D 0A 7B 39 38 46 42 39 38 7D 5B 2F 72 65 61 6C 69 7A 61 72 69 68 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 72 65 6D 69 69 20 72 65 61 6C 69 7A 61 72 69 20 48 41 52 44 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 6F 6E 74 6F 67 5D 7B 46 46 46 46 46 46 7D 20 2D 20 6F 62 74 69 6E 65 72 65 20 63 6F 6E 74 20 4F 47 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 6F 6E 74 70 72 65 6D 69 75 6D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 6F 62 74 69 6E 65 72 65 20 63 6F 6E 74 20 70 72 65 6D 69 75 6D 0A 7B 39 38 46 42 39 38 7D 5B 2F 6E 75 6D 65 63 6F 6C 6F 72 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 64 65 20 5B 2F 70 63 6F 6C 6F 72 5D 20 64 61 63 61 20 61 72 65 20 50 72 65 6D 69 75 6D 00
end

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:dialog_masini
alloc 0@ 10000
0AC6: 0@ = label @dialog_text_masini offset
SAMP.ShowDialog(9999, "{20B2AA}Masini", 0@, "{32CD32}Inapoi", "", 0)
//free 0@
return

:dialog_text_masini
hex
7B 39 38 46 42 39 38 7D 5B 2F 64 73 20 7B 38 37 43 45 45 42 7D 3C 6D 61 73 69 6E 61 3E 7B 39 38 46 42 39 38 7D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 49 69 20 73 70 75 69 20 64 65 74 61 6C 69 69 20 64 65 73 70 72 65 20 6D 61 73 69 6E 61 20 73 69 20 63 61 74 65 20 73 75 6E 74 20 69 6E 20 73 74 6F 63 6B 20 28 65 78 65 6D 70 6C 75 3A 20 5B 2F 64 73 20 69 6E 66 65 72 6E 75 73 5D 20 64 65 74 61 6C 69 69 20 66 75 6C 6C 20 49 6E 66 65 72 6E 75 73 20 6C 75 61 74 65 20 64 69 6E 20 2F 64 73 70 72 69 63 65 29 0A 7B 39 38 46 42 39 38 7D 5B 2F 6E 6F 64 73 5D 7B 46 46 46 46 46 46 7D 20 2D 20 4D 61 73 69 6E 61 20 6E 75 20 73 65 20 61 66 6C 61 20 69 6E 20 27 44 65 61 6C 65 72 73 68 69 70 27 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 6F 73 74 61 20 7B 38 37 43 45 45 42 7D 3C 6D 61 73 69 6E 61 3E 7B 39 38 46 42 39 38 7D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 73 70 75 69 20 70 72 65 74 75 6C 20 6D 61 73 69 6E 69 69 20 69 6E 20 44 53 0A 7B 39 38 46 42 39 38 7D 5B 2F 76 69 74 65 7A 61 20 7B 38 37 43 45 45 42 7D 3C 6D 61 73 69 6E 61 3E 7B 39 38 46 42 39 38 7D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 73 70 75 69 20 63 65 20 76 69 74 65 7A 61 20 70 72 69 6E 64 65 20 6F 20 6D 61 73 69 6E 61 0A 7B 39 38 46 42 39 38 7D 5B 2F 6B 6D 20 7B 38 37 43 45 45 42 7D 3C 76 69 74 65 7A 61 3E 7B 39 38 46 42 39 38 7D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 41 63 65 6C 20 76 65 68 69 63 75 6C 20 70 72 69 6E 64 65 2E 2E 2E 20 28 70 65 6E 74 72 75 20 6D 61 73 69 6E 69 20 63 61 72 65 20 6E 75 20 73 75 6E 74 20 69 6E 20 44 53 29 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 74 6F 63 6B 20 7B 38 37 43 45 45 42 7D 3C 6D 61 73 69 6E 61 3E 7B 39 38 46 42 39 38 7D 5D 7B 46 46 46 46 46 46 7D 20 2D 20 63 61 74 65 20 6D 61 73 69 6E 69 20 6D 61 69 20 73 75 6E 74 20 69 6E 20 73 74 6F 63 6B 0A 7B 39 38 46 42 39 38 7D 5B 2F 64 65 63 69 73 5D 7B 46 46 46 46 46 46 7D 20 2D 20 73 70 75 69 20 63 61 20 70 72 65 74 75 6C 20 6D 61 73 69 6E 69 69 20 65 73 74 65 20 64 65 63 69 73 20 64 65 20 76 61 6E 7A 61 74 6F 72 20 28 65 78 3A 20 76 65 68 20 73 70 65 63 69 61 6C 65 20 67 69 66 74 2C 20 70 72 65 6D 69 75 6D 29 0A 7B 39 38 46 42 39 38 7D 5B 2F 6D 61 73 69 6E 61 69 65 66 74 69 6E 61 5D 7B 46 46 46 46 46 46 7D 20 2D 20 44 65 74 61 6C 69 69 20 50 65 72 65 6E 6E 69 61 6C 0A 7B 39 38 46 42 39 38 7D 5B 2F 76 65 68 69 63 75 6C 69 65 66 74 69 6E 5D 7B 46 46 46 46 46 46 7D 20 2D 20 44 65 74 61 6C 69 69 20 62 69 6B 65 0A 7B 39 38 46 42 39 38 7D 5B 2F 6D 61 73 69 6E 61 73 63 75 6D 70 61 5D 7B 46 46 46 46 46 46 7D 20 2D 20 44 65 74 61 6C 69 69 20 49 6E 66 65 72 6E 75 73 00
end

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:dialog_giftbox
alloc 0@ 10000
0AC6: 0@ = label @dialog_text_giftbox offset
SAMP.ShowDialog(9999, "{20B2AA}Giftbox", 0@, "{32CD32}Inapoi", "", 0)
free 0@
return

:dialog_text_giftbox
hex
7B 39 38 46 42 39 38 7D 5B 2F 70 67 69 66 74 5D 7B 46 46 46 46 46 46 7D 20 2D 20 73 70 75 69 20 70 72 65 6D 69 69 6C 65 20 64 65 20 6C 61 20 67 69 66 74 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 75 6D 67 69 66 74 5D 7B 46 46 46 46 46 46 7D 20 2D 20 69 69 20 73 70 75 69 20 63 61 20 61 72 65 20 6E 65 76 20 64 65 20 33 20 6F 72 65 2C 20 6C 65 76 65 6C 20 35 0A 7B 39 38 46 42 39 38 7D 5B 2F 67 69 66 74 64 65 6C 61 79 5D 7B 46 46 46 46 46 46 7D 20 2D 20 69 69 20 73 70 75 69 20 63 61 20 70 6F 61 74 65 20 64 61 20 67 69 66 74 20 6C 61 20 33 20 70 61 79 64 61 79 75 72 69 20 63 75 20 31 38 30 31 20 73 65 63 0A 7B 39 38 46 42 39 38 7D 5B 2F 67 69 66 74 73 65 63 5D 7B 46 46 46 46 46 46 7D 20 2D 20 69 69 20 73 70 75 69 20 63 61 20 74 72 65 62 75 69 65 20 73 61 20 6A 6F 61 63 65 20 31 38 30 31 20 73 65 63 75 6E 64 65 20 6C 61 20 70 61 79 64 61 79 0A 7B 39 38 46 42 39 38 7D 5B 2F 63 61 6C 65 6E 64 61 72 5D 7B 46 46 46 46 46 46 7D 20 2D 20 67 61 73 65 73 74 69 20 65 76 65 6E 69 6D 65 6E 74 75 6C 20 7A 69 6C 65 69 20 70 65 20 70 61 6E 65 6C 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 70 65 63 69 61 6C 71 75 65 73 74 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 72 65 6D 69 69 20 73 70 65 63 69 61 6C 20 71 75 65 73 74 20 28 71 75 65 73 74 20 61 63 74 69 76 3A 20 78 4D 61 73 20 51 75 65 73 74 29 20 0A 7B 39 38 46 42 39 38 7D 5B 2F 71 75 65 73 74 70 61 72 74 79 5D 7B 46 46 46 46 46 46 7D 20 2D 20 62 65 6E 65 66 69 63 69 69 20 71 75 65 73 74 70 61 72 74 79 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 69 64 65 71 75 65 73 74 5D 7B 46 46 46 46 46 46 7D 20 2D 20 70 72 65 6D 69 69 6C 65 20 64 65 20 6C 61 20 53 69 64 65 20 51 75 65 73 74 20 28 71 75 65 73 74 20 61 63 74 69 76 3A 20 27 4D 4F 53 20 43 52 41 43 49 55 4E 27 29 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 61 6E 73 65 5D 7B 46 46 46 46 46 46 7D 20 2D 20 73 61 6E 73 65 6C 65 20 70 65 6E 74 72 75 20 53 69 64 65 20 51 75 65 73 74 2C 20 76 61 20 73 63 72 69 65 20 64 6F 61 72 20 76 6F 75 61 20 69 6E 20 63 68 61 74 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 61 6E 73 61 20 7B 38 37 43 45 45 42 7D 3C 6E 72 3E 20 3C 6E 72 3E 20 3C 6E 72 3E 7B 39 38 46 42 39 38 7D 20 2E 2E 2E 5D 7B 46 46 46 46 46 46 7D 20 2D 20 53 61 6E 73 65 6C 65 20 70 65 6E 74 72 75 20 61 63 65 6C 65 20 6A 6F 62 75 72 69 20 73 75 6E 74 20 64 65 20 2E 2E 2E 20 0A 7B 39 38 46 42 39 38 7D 5B 2F 73 61 6E 73 61 6D 61 72 65 5D 7B 46 46 46 46 46 46 7D 20 2D 20 43 65 6C 65 20 6D 61 69 20 6D 61 72 69 20 73 61 6E 73 65 20 73 75 6E 74 20 6C 61 3A 20 47 61 72 62 61 67 65 20 2D 20 35 30 2C 20 41 69 72 20 72 65 73 63 75 65 20 2D 20 33 30 2C 20 46 61 72 6D 65 72 20 73 69 20 42 6F 61 74 20 2D 20 32 30 2E 00
end

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:helpercmd
gosub @dialog_main_menu
SAMP.CmdRet()

:hconfirm
var_showdialog = DIALOG_HIDDEN
var_qmessage = 0
0B12: var_confirmation = var_confirmation XOR 1
0AF1: write_int var_confirmation to_ini_file "cleo\cleo_saves\Helper CMD - Settings.ini" section "HelperCMD" key "confirmation"
SAMP.CmdRet()

:chatlines_hook
0BE5: raknet 28@ = get_hook_param PARAM_PACKETID
if 28@ == RPC_SCRCLIENTMESSAGE
then     
    0BE5: raknet 28@ = get_hook_param PARAM_BITSTREAM
    0BE7: raknet 27@ = bit_stream_read 28@ type BS_TYPE_INT
    0BE7: raknet 26@ = bit_stream_read 28@ type BS_TYPE_INT 
    26@++
    alloc 25@ 26@
    0C11: memset destination 25@ value 0 size 26@
    26@-- 
    0BE8: raknet bit_stream 28@ read_array 25@ size 26@
    0C0D: struct 25@ offset 26@ size 1 = 0
    
    if
    0C29: -1 = stristr string1 25@ string2 "New question:"
    then
        var_qmessage = 1
        0BE0: raknet hook_ret true
    end
    
    if and 
    0C29: -1 = stristr string1 25@ string2 "* "
    var_qmessage == 1
	var_confirmation == 1
    then
		alloc var_question 150
        0C13: strcpy destination var_question source 25@
        var_qmessage = 2    
        0BE0: raknet hook_ret true
    end
    
    if 
    0C29: -1 = stristr string1 25@ string2 "Ai sarit peste aceasta intrebare."
    then
        chatmsg "{%x}   {%x}Skipped question{%x}  " -1 __RED __WHT __RED
        var_qmessage = 0    
        0BE0: raknet hook_ret true
    end
    
    if
    0C29: -1 = stristr string1 25@ string2 "Dealership Price"
    then
        if var_ds_req == DS_REQ_EXISTING
        then
            alloc var_dsmessage 256
            0C13: strcpy destination var_dsmessage source 25@
            var_ds_req = 0
            var_ds_obtained = DS_OBTAINED 
            0BE0: raknet hook_ret false 
        end
    end
    
    if
    0C29: -1 = stristr string1 25@ string2 "* Nu au fost gasite rezultate!"
    then
        var_ds_req = DS_REQ_OTHER
        chatmsg "{bfbfbf}Eroare: {ffffff}Vehiculul nu se afla in 'Dealership'. Se verifica lista aditionala." -1
        0BE0: raknet hook_ret false 
    end
    free 25@   
end
0BE0: raknet hook_ret true

:create_additional_list
alloc 0@ 10000
0AC6: 0@ = label @other_vehicles_text offset
alloc var_extract 256
0C16: var_extract = strtok string1 0@ string2 ";"
var_index = 0
alloc 1@ 12
while not var_extract == #NULL
    var_index++
    0AD3: 1@v = format "vehicle%d" var_index
    0AF5: write_string var_extract to_ini_file "cleo\cleo_saves\Helper CMD - Additional data.ini" section "AdditionalVehicles" key 1@v
    0C16: var_extract = strtok string1 #NULL string2 ";"
    //chatmsg "while loop" -1
end
//chatmsg "exited while loop" -1
//free 0@
//free var_extract
free 1@
return

:other_vehicles
var_index = 1
alloc 1@ 12
while var_index <= 12   // 12 strings, modify as needed
    0AD3: 1@v = format "vehicle%d" var_index
	alloc var_dsmessage 256
    0AF4: var_dsmessage = read_string_from_ini_file "cleo\cleo_saves\Helper CMD - Additional data.ini" section "AdditionalVehicles" key 1@v
    var_index ++
    if 0C29: var_not_used = stristr string1 var_dsmessage string2 var_param  // change var
    then
        var_ds_obtained = DS_OBTAINED
        break
    end	
	free var_dsmessage
end
free 1@
if var_ds_obtained == 0
then
    free var_param
    chatmsg "Not found in additional list." -1
end
return

:other_vehicles_text
hex 
61 20 61 20 2D 20 53 70 61 72 72 6F 77 20 28 61 20 61 20 34 30 30 2C 20 2D 31 20 61 20 61 20 31 33 30 20 6D 20 61 3B 61 20 61 20 2D 20 4D 61 76 65 72 69 63 6B 20 28 61 20 61 20 37 30 30 2C 20 2D 31 20 61 20 61 20 31 37 30 20 6D 20 61 3B 61 20 61 20 2D 20 53 74 72 65 74 63 68 20 28 61 20 61 20 33 35 30 2C 20 2D 31 20 61 20 61 20 31 34 39 20 6D 20 61 3B 61 20 61 20 2D 20 48 6F 74 72 69 6E 67 20 41 2F 42 2F 43 20 28 61 20 61 20 35 30 30 2C 20 2D 31 20 61 20 61 20 32 30 33 20 6D 20 61 3B 61 20 61 20 2D 20 4D 6F 6E 73 74 65 72 20 28 61 20 61 20 2D 31 2C 20 2D 31 20 61 20 61 20 31 30 34 20 6D 20 61 3B 61 20 61 20 2D 20 53 68 61 6D 61 6C 20 28 61 20 61 20 35 30 30 2C 20 2D 31 20 61 20 61 20 32 35 35 20 6D 20 61 3B 61 20 61 20 2D 20 54 72 6F 70 69 63 20 28 61 20 61 20 33 35 30 2C 20 2D 31 20 61 20 61 20 31 32 30 20 6D 20 61 3B 61 20 61 20 2D 20 42 4D 58 20 28 61 20 61 20 2D 31 2C 20 2D 32 20 61 20 61 20 39 31 20 6D 20 61 3B 61 20 61 20 2D 20 4C 61 6E 64 73 74 61 6C 6B 65 72 20 28 61 20 61 20 2D 31 2C 20 2D 32 20 61 20 61 20 31 34 39 20 6D 20 61 3B 61 20 61 20 2D 20 4B 61 72 74 20 28 61 20 61 20 2D 31 2C 20 2D 32 20 61 20 61 20 38 38 20 6D 20 61 3B 61 20 61 20 2D 20 42 61 6E 64 69 74 6F 20 28 61 20 61 20 2D 31 2C 20 2D 32 20 61 20 61 20 31 33 38 20 6D 20 61 3B 61 20 61 20 2D 20 50 61 74 72 69 6F 74 20 28 61 20 61 20 2D 31 2C 20 2D 32 20 61 20 61 20 31 34 38 20 6D 20 61 3B 00
end
return

:printds
alloc var_auxstring 50
alloc var_vname 50
alloc var_vspeed 50
alloc var_vstock 50
alloc var_vprice 50
0C16: var_auxstring = strtok string1 var_dsmessage string2 " "
0C16: var_auxstring = strtok string1 #NULL string2 " "
0C16: var_auxstring = strtok string1 #NULL string2 " "
0C16: var_vname = strtok string1 #NULL string2 "("
0C16: var_auxstring = strtok string1 #NULL string2 " "
0C16: var_auxstring = strtok string1 #NULL string2 " "
0C16: var_vprice = strtok string1 #NULL string2 ","
0C16: var_vstock = strtok string1 #NULL string2 " "            
0C16: var_auxstring = strtok string1 #NULL string2 " "
0C16: var_auxstring = strtok string1 #NULL string2 " "
0C16: var_vspeed = strtok string1 #NULL string2 " "
free var_auxstring
wait 400
return

//Cum faci chestii------------------------------------------------------------------------------------------------------------

// GIFTBOX + Special Quest
:cumogp
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti obtine 'OG Points' din Level up, Daily Quests, Skill Up, Giftbox, xMas Quest si din [/realizari]."
SAMP.CmdRet()
// GIFTBOX + Special Quest
:cumpp                
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti obtine 'Premium Points' din plati pe [/panel], [/buylevel] peste nivel 10, Giftbox, xMas Quest sau [/realizari]."
SAMP.CmdRet()
// GIFTBOX + Special Quest
:cumrp                
alloc var_preview1 256
0AD3: var_preview1 = format "/nre  Poti obtine Respect Points din Payday, Referral, Giftbox, xMas Quest si Daily Quests."
SAMP.CmdRet()
// GIFTBOX + Special Quest
:cumrbp               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti obtine Rob Points prin Payday si xMas Quest."
SAMP.CmdRet()

:cumrob               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru a jefui o afacere tasteaza comanda [/rob] in aceasta si urmeaza checkpointurile rosii pentru a fi platit."
SAMP.CmdRet()
// GIFTBOX + Special Quest + Side Quest
:cumbani              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti obtine bani din job, [/realizari], Daily Quests, Rob, Giftbox, xMas Quest, Side Quest, Referral si Payday."
SAMP.CmdRet()
// GIFTBOX
:cumats               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti obtine materiale de la alti jucatori prin [/trade], de la jobul 'Arms Dealer', 'Paintball' si 'Giftbox'."
SAMP.CmdRet()

:cumad                
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Tasteaza comanda [/ad] cand esti la un business de tip 'CNN', ai nevoie de minim nivel 5."
SAMP.CmdRet()

:cummasina            
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti achizitiona o masina din Dealership, din [/shop] sau de la playeri prin [/trade]."
SAMP.CmdRet()

:cumfill              
alloc var_preview1 256
alloc var_preview2 256
0AD3: var_preview1 = format "/nre Poti alimenta vehiculul prin [/fill] la un business de tip  'Gas Station', prin [/usegascan] daca ai o [...]"
0AD3: var_preview2 = format "/nre [...] canistra sau contacteaza un mecanic prin comanda [/service - Mechanic] pentru a-ti oferi 'Refill'."
SAMP.CmdRet()

:cumlights        
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti aprinde farurile folosind comanda [/lights] sau apasand tasta 'CTRL'."
SAMP.CmdRet()

:cumculoare           
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Tasteaza [/carcolor 1/2 <0-255>] pentru a face acest lucru."
SAMP.CmdRet()

:cumculoareh          
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti adauga un 'Hidden' pe automobile folosind comanda [/carcolor 1/2 <128-255>]."
SAMP.CmdRet()
// GIFTBOX
:cumhidd              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti obtine 'Hidden' de la jucatori prin [/trade], din [/shop] si 'Giftbox'."
SAMP.CmdRet()

:cumlevel             
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti avansa in nivel prin comanda [/buylevel] daca detii banii si numarul necesar de 'Respect Points'."
SAMP.CmdRet()

:cumchat              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru a face acest lucru foloseste comanda [/fontsize], respectiv [/pagesize]."
SAMP.CmdRet()

:cumbandana           
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Iti poti achizitiona o bandana cu OG Points dintr-un business de tip 'Binco'."
SAMP.CmdRet()

:cumgym               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti achizitiona un stil de lupta dintr-un business tip 'GYM' folosind comanda [/buyfightstyle]."
SAMP.CmdRet()

:anim                 
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru a vedea toate animatiile foloseste comanda [/animlist]."
SAMP.CmdRet()

:face
alloc var_param 150
if 0B35: samp var_param = get_last_command_params
then
    alloc var_preview1 256
    0AD3: var_preview1 = format "/nre Poti face acest lucru tastand comanda [/%s]." var_param
else
    chatmsg "{bfbfbf}Syntax: {ffffff}/face <comanda>" -1
end
free var_param
SAMP.CmdRet()

:tasta
alloc var_param 150
if 0B35: samp var_param = get_last_command_params
then
    alloc var_preview1 256
    0AD3: var_preview1 = format "/nre Poti face acest lucru apasand tasta '%s'." var_param
else
    chatmsg "{bfbfbf}Syntax: {ffffff}/tasta <tasta>" -1
end
free var_param
SAMP.CmdRet()

//Ce fac cu?------------------------------------------------------------------------------------------------------------------

:ceogp                
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Cu OG Points iti poti tuna masina la 'Tuning', iti poti achizitiona bandane din 'Binco' sau skinuri daca ai un cont OG."
SAMP.CmdRet()

:cerob                
alloc var_preview1 256
alloc var_preview2 256
0AD3: var_preview1 = format "/nre Pentru a putea jefui o afacere ai nevoie de minim nivel 5, licenta de 'Gun', minim o ora jucata [...]"
0AD3: var_preview2 = format "/nre [...] si 10 'Rob Points', respectiv 8 daca detii un cont de tip 'OG'."
SAMP.CmdRet()

:cemats           
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Cu 'Mats' iti poti crafta arme prin [/creategun], poti vinde arme prin [/sellgun] sau le poti comercializa prin [/trade]."
SAMP.CmdRet()

:cedrugs              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Drogurile le poti folosi prin [/usedrugs] sau le poti comercializa prin [/trade]."
SAMP.CmdRet()

:cerace               
alloc var_preview1 256
alloc var_preview2 256
0AD3: var_preview1 = format "/nre La 'Race Arena', fiecare concurent poate paria pana la $50.000, iar castigatorul cursei primeste suma de bani. [...]" 
0AD3: var_preview2 = format "/nre [...] De asemenea, daca bati recordul unei harti vei primi bani si 'OG Points', in functie de numarul de concurenti."
SAMP.CmdRet()

//Licente---------------------------------------------------------------------------------------------------------------------

:cumlic           
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru a obtine o licenta foloseste comanda [/service - Instructor] si asteapta sa fii contactat."
SAMP.CmdRet()

:licgun               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Licenta de 'Gun' costa $250.000."
SAMP.CmdRet()

:licfly               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Licenta de 'Fly' costa $150.000."
SAMP.CmdRet()

:licboat              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Licenta de 'Sailing' costa $100.000."
SAMP.CmdRet()

:licall               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Licenta de condus costa $1.000, iar licentele de 'Gun', 'Fly' si 'Sailling' costa $250.000, $150.000, respectiv $100.000."
SAMP.CmdRet()

:licdrive             
alloc var_preview1 256
0AD3: var_preview1 = format "/nre In momentul in care folosesti comanda [/exam] iti va fi aplicata o taxa de $1.000."
SAMP.CmdRet()

//Joburi----------------------------------------------------------------------------------------------------------------------

:dailyjob             
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti vedea jobul zilei folosind comanda [/jobs]. Acesta ofera cu 25# mai multi bani si se schimba zilnic la ora 00:05."    
SAMP.CmdRet()

:topworker            
alloc var_preview1 256
alloc var_preview2 256
0AD3: var_preview1 = format "/nre Cei mai buni muncitori ai fiecarui job vor fi recompensati cu cate 50 'Premium Points'. Procesarea se face [...]"
0AD3: var_preview2 = format "/nre [...] in fiecare duminica la ora 20:30. Pentru a participa ai nevoie de minim nivel 2 si 50 de ture la un job."
SAMP.CmdRet()

:profitabil       
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Toate joburile sunt profitabile, cu exceptia jobului 'Detective'. Personal iti recomand jobul 'Farmer'."    
SAMP.CmdRet()

:munceste             
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti lucra chiar tu la jobul respectiv pentru a afla acest lucru."
SAMP.CmdRet()

:skill                
alloc var_preview1 256
0AD3: var_preview1 = format "/nre O sa primesti mai multi bani practicand jobul si o suma de OG Points."
SAMP.CmdRet()

:sfarm                
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru skill 2 ai nevoie de 85 ture, skill 3: 170 ture, skill 4: 430 ture, skill 5: 770 ture, skill 6: 1027 ture."
SAMP.CmdRet()

:struck               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru skill 2 ai nevoie de 100 ture, skill 3: 210 ture, skill 4: 530 ture, skill 5: 950 ture, skill 6: 1270 ture."
SAMP.CmdRet()

:skilltruck           
alloc var_preview1 256
0AD3: var_preview1 = format "/nre La skill 2 vei putea face curse ilegale si la skill 3 curse explozibile."
SAMP.CmdRet()

:remorca              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru a face acest lucru, tasteaza comanda [/tog] si dezactiveaza 'Auto attach trailer (trucker)'."
SAMP.CmdRet()

:slumber              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru skill 2 ai nevoie de 160 ture, skill 3: 340 ture, skill 4: 848 ture, skill 5: 1520 ture, skill 6: 2040 ture."
SAMP.CmdRet()

:sgarbage             
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru skill 2 ai nevoie de 30 ture, skill 3: 65 ture, skill 4: 165 ture, skill 5: 295 ture, skill 6: 400 ture."
SAMP.CmdRet()

:spizza               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru skill 2 ai nevoie de 120 ture, skill 3: 240 ture, skill 4: 600 ture, skill 5: 1080 ture, skill 6: 1440 ture."
SAMP.CmdRet()

:scutere              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre La jobul respectiv vei avea 'Pizzaboy' la skill 1-2, 'Wayfarer' la skill 3-4 si 'PCJ-600' la skill 5-6."
SAMP.CmdRet()

:scurier              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru skill 2 ai nevoie de 100 ture, skill 3: 205 ture, skill 4: 515 ture, skill 5: 930 ture, skill 6: 1234 ture."
SAMP.CmdRet()

:sfork                
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru skill 2 ai nevoie de 666 ture, skill 3: 1333 ture, skill 4: 3333 ture, skill 5: 6000 ture, skill 6: 8000 ture."
SAMP.CmdRet()

:sbus                 
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru skill 2 ai nevoie de 900 ture, skill 3: 1800 ture, skill 4: 4500 ture, skill 5: 8100 ture, skill 6: 10800 ture."
SAMP.CmdRet()

:sfish                
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru skill 2 ai nevoie de 130 ture, skill 3: 265 ture, skill 4: 666 ture, skill 5: 1200 ture, skill 6: 1600 ture."
SAMP.CmdRet()

:sair                 
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru skill 2 ai nevoie de 100 ture, skill 3: 250 ture, skill 4: 450 ture, skill 5: 666 ture, skill 6: 1000 ture."
SAMP.CmdRet()

:sboat                
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru skill 2 ai nevoie de 75 ture, skill 3: 150 ture, skill 4: 337 ture, skill 5: 700 ture, skill 6: 1000 ture."
SAMP.CmdRet()

:barci                
alloc var_preview1 256
0AD3: var_preview1 = format "/nre La jobul respectiv vei avea 'Dinghy' la skill 1-2, 'Speeder' la skill 3-4 si 'Squallo' la skill 5-6."
SAMP.CmdRet()

:peste                
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pestele se va vinde automat, in momentul in care intri intr-un business de tip '24/7'."
SAMP.CmdRet()

:faina                
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Faina se va vinde automat, in momentul in care intri intr-un business de tip 'Burger'."
SAMP.CmdRet()

//Utile-----------------------------------------------------------------------------------------------------------------------

:explicit             
alloc var_preview1 256
0AD3: var_preview1 = format "/nd Te rog sa fii mai explicit pentru a te putea ajuta"
SAMP.CmdRet()

:naiurea              
alloc var_preview1 256
0AD3: var_preview1 = format "/nd [/n] aiurea"
SAMP.CmdRet()

:nprost               
alloc var_preview1 256
0AD3: var_preview1 = format "/nd Foloseste [/n] doar daca ai nelamuriri/curiozitati strict despre server"
SAMP.CmdRet()

:nm
alloc var_param 150
if 0B35: samp var_param = get_last_command_params
then                  
    alloc var_preview1 256
    0AD3: var_preview1 = format "/nmute %s 30 [/n] aiurea" var_param
else
    chatmsg "{bfbfbf}Syntax: {ffffff}/nm <id>" -1
end     
free var_param
SAMP.CmdRet()

:suport               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Nu oferim suport pentru moduri, tehnic, sau varianta de telefon a jocului."
SAMP.CmdRet()

:poti                 
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Da, poti face asta."
SAMP.CmdRet()

:nupoti               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Nu poti face acest lucru."
SAMP.CmdRet()

:nudetinem            
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Nu detinem aceasta informatie."
SAMP.CmdRet()

:nuexista             
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Nu exista un astfel de sistem pe server."
SAMP.CmdRet()

:bug                  
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Daca consideri ca ai descoperit un bug il poti raporta pe [/panel] printr-un ticket."
SAMP.CmdRet()

:post                 
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Daca consideri ca acel jucator nu a procedar corect, il poti reclama pe [/panel] daca ai dovezile necesare."
SAMP.CmdRet()

:afla                 
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti afla chiar tu facand acest lucru."
SAMP.CmdRet()

:mrp                  
say "/myraport"
SAMP.CmdRet()

:hd                  
say "/hduty"
SAMP.CmdRet()

:ajut
say "/lc Salut! Cu ce te pot ajuta? Foloseste comanda [/lc] pentru a scrie."
SAMP.CmdRet()

:sv
say "/solved"
SAMP.CmdRet()

//Altele----------------------------------------------------------------------------------------------------------------------

:populara             
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Cea mai populara frecventa este '1234', tasteaza [/setfreq 1234] pentru a intra pe frecventa."
SAMP.CmdRet()

:inalta               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Cea mai inalta cladire este 'Maze Bank', aceasta este situata in orasul Los Santos."
SAMP.CmdRet()

:vending              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti gasi un vending machine in interiorul unui business tip '24/7'."
SAMP.CmdRet()

:amenzi               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Amenzile pentru NOS, Casca si Lumini sunt: $50.000, $30.000 si $30.000."
SAMP.CmdRet()

:conturi              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Te poti conecta cu 3 conturi simultan, respectiv 2 conturi daca sunt peste 950 de jucatori online."
SAMP.CmdRet()

:taxi                 
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti chema chiar tu un taximetrist prin [/service - Taxi] pentru a te transporta acolo sau poti cauta locatia pe internet."
SAMP.CmdRet()

:culori               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Tasteaza comanda [/colors] pentru a vedea culorile disponibile."
SAMP.CmdRet()

:flevel     
alloc var_param 150          
if 0B35: samp var_param = get_last_command_params
then                  
    alloc var_preview1 256
    0AD3: var_preview1 = format "/nre Ai nevoie de minimum 15 ore jucate, nivel %s si o aplicatie pe [/panel]." var_param
else
    chatmsg "{bfbfbf}Syntax: {ffffff}/flevel <level>" -1
end                
free var_param
SAMP.CmdRet()

:dutepanel
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti verifica chiar tu acest lucru pe [/panel] la sectiunea 'Shop' apasand pe butonul 'Descriere produs'."
SAMP.CmdRet()

:vezireg              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti verifica chiar tu acest lucru pe [/panel] la sectiunea 'Regulamente'."
SAMP.CmdRet()

:calcula              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti calcula chiar tu acest lucru avand in vedere ca este deschis din data de 26.07.2024 la ora 20:30."
SAMP.CmdRet()

:deschis              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Serverul a fost deschis pe data de 26.07.2024 la ora 20:30."
SAMP.CmdRet()

:update               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti afla chiar tu acest lucru de pe [/panel] la sectiunea 'Updates'."
SAMP.CmdRet()

//Sisteme importante----------------------------------------------------------------------------------------------------------

:paintball            
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Ai nevoie de minim nivel 7, licenta de 'Gun' si 15 ore jucate."
SAMP.CmdRet()

:racerecord           
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Daca bati recordul unei harti, vei primi cate $50.000 si 100 'OG Points' pentru fiecare concurent din acea cursa."
SAMP.CmdRet()

:questzilnice         
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Questurile zilnice se vor reseta in fiecare zi la ora 07:00."
SAMP.CmdRet()

:casinolimit          
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti vedea suma disponibila folosind comanda [/casino]. Aceasta se reseteaza in fiecare zi la ora 07:00."
SAMP.CmdRet()

:breferal             
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Daca cineva foloseste referralul tau, pentru fiecare nivel vei primi o suma de bani, iar dupa nivel 7 Respect Points."
SAMP.CmdRet()

:masinavip            
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Vei avea acces la Tow vehicle(last known location), o sa ai acces la [/vipmenu] si pretul asigurarii o sa scada la $2/km."
SAMP.CmdRet()

:realizarie           
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru o realizare de tip 'Easy' vei fi recompensat cu $750.000, 2 Puncte Premium si 250 OG Points."
SAMP.CmdRet()

:realizarim           
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru o realizare de tip 'Medium' vei fi recompensat cu $1.500.000, 3 Puncte Premium si 500 OG Points."
SAMP.CmdRet()

:realizarih           
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru o realizare de tip 'Hard' vei fi recompensat cu $2.500.000, 5 Puncte Premium si 1000 OG Points."
SAMP.CmdRet()

:contog               
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Acesta se va obtine automat la acumularea de 1.500 Premium Points platite, sau la completarea listei [/realizari]."
SAMP.CmdRet()

:contpremium          
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Iti poti achizitiona contul prin [/shop -> Normal shop] si 'Premium Account', acesta costa 150 Premium Points."
SAMP.CmdRet()

:numecolor            
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti face acest lucru tastand comanda [/pcolor], daca detii un cont 'Premium'."
SAMP.CmdRet()

//Masini----------------------------------------------------------------------------------------------------------------------

:ds
alloc var_param 150
if 0B35: samp var_param = get_last_command_params
then
    var_ds_req = DS_REQ_EXISTING
    var_ds_rtype = DS_RTYPE_FULL
    say "/dsprice %s" var_param
else
    chatmsg "{bfbfbf}Syntax: {ffffff}/ds <vehicle>" -1
end     
SAMP.CmdRet()

:nods                 
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Acel vehicul nu se regaseste in 'Dealership'."
SAMP.CmdRet()

:costa
alloc var_param 150
if 0B35: samp var_param = get_last_command_params
then
    var_ds_req = DS_REQ_EXISTING
    var_ds_rtype = DS_RTYPE_PRICE
    say "/dsprice %s" var_param
else
    chatmsg "{bfbfbf}Syntax: {ffffff}/costa <masina>" -1
end   
SAMP.CmdRet()

:viteza
alloc var_param 150
if 0B35: samp var_param = get_last_command_params
then
    var_ds_req = DS_REQ_EXISTING
    var_ds_rtype = DS_RTYPE_SPEED
    say "/dsprice %s" var_param
else
    chatmsg "{bfbfbf}Syntax: {ffffff}/viteza <masina>" -1
end   
SAMP.CmdRet()

:km
alloc var_param 150
if 0B35: samp var_param = get_last_command_params
then                  
    alloc var_preview1 256
    0AD3: var_preview1 = format "/nre Acel vehicul atinge viteza maxima de %skm/h." var_param
else
    chatmsg "{bfbfbf}Syntax: {ffffff}/km <viteza>" -1
end   
SAMP.CmdRet()

:stock
alloc var_param 150
if 0B35: samp var_param = get_last_command_params
then
    var_ds_req = DS_REQ_EXISTING
    var_ds_rtype = DS_RTYPE_STOCK
    say "/dsprice %s" var_param
else
    chatmsg "{bfbfbf}Syntax: {ffffff}/stock <masina>" -1
end   
SAMP.CmdRet()

:decis
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pretul este decis de vanzator, nu te putem influenta."
SAMP.CmdRet()

:masinaieftina
var_ds_req = DS_REQ_EXISTING
var_ds_rtype = DS_RTYPE_MASIEFTINA
say "/dsprice perennial"
SAMP.CmdRet()

:vehiculieftin
var_ds_req = DS_REQ_EXISTING
var_ds_rtype = DS_RTYPE_VEHIEFTIN
say "/dsprice bike"
SAMP.CmdRet()

:masinascumpa
var_ds_req = DS_REQ_EXISTING
var_ds_rtype = DS_RTYPE_MASSCUMPA
say "/dsprice infernus"
SAMP.CmdRet()

//Giftbox---------------------------------------------------------------------------------------------------------------------

:pgift                
alloc var_preview1 256
alloc var_preview2 256
0AD3: var_preview1 = format "/nre Din 'Giftbox' ai sansa de a castiga: Banshee, Monster, Mountain Bike, 'Premium Points', Hidden, [...]"
0AD3: var_preview2 = format "/nre [...] Vehicle Slot, 'OG Points', bani, droguri, materiale, 'Respect Points', clear warn sau fireworks."
SAMP.CmdRet()

:cumgift          
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti tasta [/getgift] daca ai 3 ore jucate totale, 3 ore jucate in ultimele 7 zile si minim nivel 5."
SAMP.CmdRet()

:giftdelay            
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Pentru a putea uitliza din nou [/getgift], ai nevoie de 3 Paydayuri luate in care te-ai jucat minim 1801 secunde."
SAMP.CmdRet()

:giftsec              
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Ai nevoie de minim 1801 secunde jucate la 'Payday' pentru a ti se contoriza o ora jucata de la 'Giftbox'."
SAMP.CmdRet()

:calendar             
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Poti gasi evenimentul zilei pe [/panel] la sectiunea 'Calendar de evente'."
SAMP.CmdRet()

:specialquest         
alloc var_preview1 256
alloc var_preview2 256
0AD3: var_preview1 = format "/nre La completarea 'xMas Quest' vei primi $2.500.000, 10 Premium Points, 10 Respect Points, 10 Rob Points, [...]"
0AD3: var_preview2 = format "/nre [...] 1000 OG Points si un vehicul de tip 'Sandking' temporar, timp de 14 zile."
SAMP.CmdRet()

:questparty       
alloc var_preview1 256
alloc var_preview2 256
0AD3: var_preview1 = format "/nre Facand parte dintr-un 'Quest Party', vei putea sa ii vezi pe ceilalti membri pe harta, precum si obiectele gasite [...]"
0AD3: var_preview2 = format "/nre [...] de acestia, iar la fiecare 33 de obiecte colectate in minim 3 persoane, ti se va scadea o ora pentru [/getgift]."
SAMP.CmdRet()

:sidequest        
alloc var_preview1 256
alloc var_preview2 256
0AD3: var_preview1 = format "/nre La completarea cuvantului 'MOS CRACIUN' vei primi $1.000.000 si o ora scazuta la [/getgift]. [...]"
0AD3: var_preview2 = format "/nre [...] Literele se pot obtine muncind la un job, iar questul se reseteaza zilnic la ora 07:00."
SAMP.CmdRet()


:sanse            
chatmsg "{%x}   {%x}Sanse de a primi litera, in procente, pentru side quest {%x} " -1 __RED __LTB __RED       
chatmsg "{%x}(Garbage - 50), (Air Rescue - 30), (Farmer, Boat - 20), (Courier - 18), (Pizzaboy - 16)" -1 __LIM
chatmsg "{%x}(Trucker, Lumberjack - 15), (Fisher - 10), (Forklift - 3), (Bus - 2)" -1 __LIM
SAMP.CmdRet()

:sansa
alloc var_param 150
if 0B35: samp var_param = get_last_command_params
then
    alloc var_result 260
    alloc var_extract 256
    var_auxlen = 0
    0C13: strcpy destination var_result source ""
    0C16: var_auxstring = strtok string1 var_param string2 " "
    while not var_auxstring == #NULL
        0C13: strcpy destination var_extract source var_auxstring
        0C16: var_auxstring = strtok string1 #NULL string2 " "       
        if var_auxstring == #NULL
        then
            if var_auxlen > 0
            then
                0C17: var_not_used = strlen var_result
                var_not_used -= 2
                0C24: strncpy destination var_result source var_result size var_not_used
                0C15: strcat destination var_result source ", respectiv "
                0C15: strcat destination var_result source var_extract
            else
                0C15: strcat destination var_result source var_extract
            end
        else
            0C15: strcat destination var_result source var_extract
            0C15: strcat destination var_result source ", "
        end
        var_auxlen++ 
    end
    if var_auxlen == 1
    then          
        alloc var_preview1 256
        0AD3: var_preview1 = format "/nre Sansa de a primi litera de la acel job, in procente, este de %s." var_result
    else
        alloc var_preview1 256
        0AD3: var_preview1 = format "/nre Sansele de a primi litera la acele joburi sunt, in procente, de %s." var_result
    end
    free var_result
    free var_extract
else
    chatmsg "{bfbfbf}Syntax: {ffffff}/sansa <sansa1> <sansa2> ..." -1
end
free var_param
SAMP.CmdRet()

:sansamare
alloc var_preview1 256
0AD3: var_preview1 = format "/nre Cele mai mari sanse pentru litera sunt la: Garbage Man-50, Emergency Air Rescue-30, Farmer si Boat Transporter-20."
SAMP.CmdRet()

0A93: end_custom_thread
```
</details>
