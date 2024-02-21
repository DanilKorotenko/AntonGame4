NumAct=0
NumXP=0
NumGold=0
DummySpare=1
Item1=2
Item2=3
Item3=1
RandomDamege=0
YourHealth=20
DummyHealth=999999
DummyHappy=3
DummyName$="Antongaming64"
PRINT DummyName$; " APEARES!"
PRINT "*this is my game!so uhh i have some news to tell you"
PRINT "i would put flowey in my place to teach the mechanics"
PRINT "but i want to work on a epic boss battle like distrust sans"
PRINT "i dunno what to do"
PRINT "anyway,so im gona teach you the mechanics of this game"
PRINT "start by FIGHTing me"
PRINT "1. FIGHT"
PRINT "2. ACT"
PRINT "3. ITEM"
PRINT "4. MERCY"
DO
    INPUT "action:" ;actionChoice
    SELECT CASE actionChoice
        CASE 1
            GOSUB 300
        CASE 2
            GOSUB 310
        CASE 3
            GOSUB 320
        CASE 4
            GOSUB 330
        CASE ELSE
            PRINT "Invalid choice. Please enter a number from the menu."
    END SELECT
    if YourHealth <= 0 then
        Print "You loose"
        end
    end if
    if DummyHappy = 0 then
        PRINT DummyName$; "is smiling"
        DummySpare=DummySpare=-1
    end if
    if DummyHealth <= 0 then
        NumXP=NumXP+int(rnd(1)*2)
        NumGold=NumGold+int(rnd(1)*10)
        PRINT "YOU WON!"
        PRINT "you got" ;NumXP
        PRINT "and" ;NumGold
        end
    end if
LOOP UNTIL TRUE
END
300 REM
    PRINT DummyName$
    RandomDamege=int(rnd(1)*5)
    PRINT "took "; RandomDamege; " damege!"
    DummyHealth=DummyHealth - RandomDamege
    PRINT "DummyHealth "; DummyHealth
PRINT "*as you can see i have a LOT of health,thats becose i am the creator of this game,a god"
PRINT "now try checking me!(its in the ACT menu)"
RETURN
310 REM
PRINT DummyName$; " 989 ATK 979 DEF"
PRINT "the god of this game,the creator.dosent want to hurt you"
NumAct=NumAct+NumAct+1
if NumAct>0 then
PRINT "you tell " ;DummyName$; " that you dont wanna fight"
PRINT "NICE!but theres one last thing i need to teach you"
PRINT "if you're hurt you can heal,try now!(its in the ITEM menu)"
end if
RETURN
320 REM
    PRINT "CHOSE ITEM"
    PRINT "1. "; Item1; " monster candy(+5 hp)"
    PRINT "2. "; Item2; " sea tea(+9 hp)"
    PRINT "3. "; Item3; " Butterscotch-Cinnamon Pie(+19 hp)"
    INPUT "Item:" ;choice
    SELECT CASE choice
        CASE 1
            GOSUB 100
        CASE 2
            GOSUB 110
        CASE 3
            GOSUB 120
        CASE ELSE
            PRINT "you dont have this item..."
    END SELECT
RETURN
100 REM
    IF Item1>0 THEN
        YourHealth=YourHealth+5
        PRINT "Your Health ";YourHealth
        Item1=Item1-1
PRINT "fantastic!now you know the basics!so spare me and continue!!bye bye and have a nice day!"
    ELSE
        PRINT "you ran out of this item"
end if
RETURN
110 REM
    IF Item2>0 THEN
        YourHealth=YourHealth+5
        PRINT "Your Health ";YourHealth
        Item2=Item2-1
PRINT "fantastic!now you know the basics!so spare me and continue!!bye bye and have a nice day!"
    ELSE
        PRINT "you ran out of this item"
    end if
RETURN
120 REM
    IF Item3>0 THEN
        YourHealth=YourHealth+5
        PRINT "Your Health ";YourHealth
        Item3=Item3-1
PRINT "fantastic!now you know the basics!so spare me and continue!!bye bye and have a nice day!"
    ELSE
        PRINT "you ran out of this item"
    end if
RETURN
RETURN
330 REM
    IF DummySpare=0 THEN
        NumXP=NumXP+int(rnd(1)*2)
        NumGold=NumGold+int(rnd(1)*10)
        PRINT "YOU WON!"
        PRINT DummyName$
        PRINT "you got" ;NumXP; "XP"
        PRINT "and" ;NumGold; "GOLD"
        end
    end if
RETURN

