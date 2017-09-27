.class public Lcom/samsung/android/settings/WifiApUtils;
.super Ljava/lang/Object;
.source "WifiApUtils.java"


# static fields
.field private static final DBG:Z

.field private static DBGSTR:Z

.field public static mMHSCustomer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 46
    const-string/jumbo v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    .line 47
    sput-boolean v1, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    .line 48
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBrandingForMobileAp"

    const-string/jumbo v2, "ALL"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    .line 44
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringID"    # I

    .prologue
    .line 56
    const-string/jumbo v1, ""

    .line 57
    .local v1, "rStr":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 60
    .local v0, "customer":Ljava/lang/String;
    sget-boolean v3, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    if-eqz v3, :cond_3

    .line 61
    const-string/jumbo v3, "mhs.customer"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    :cond_0
    :goto_0
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "mhs.dbgstr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    .line 71
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v2

    .line 72
    .local v2, "strID":I
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    return-object v1

    .line 63
    .end local v2    # "strID":I
    :cond_1
    sput-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_2
    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    goto :goto_1

    .line 75
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getStringID(I)I
    .locals 5
    .param p0, "stringID"    # I

    .prologue
    .line 81
    const-string/jumbo v1, ""

    .line 83
    .local v1, "customer":Ljava/lang/String;
    sget-boolean v3, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    if-eqz v3, :cond_0

    .line 84
    const-string/jumbo v3, "mhs.customer"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    :cond_0
    :goto_0
    const-string/jumbo v3, "ril.official_cscver"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "version":Ljava/lang/String;
    const-string/jumbo v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "characteristics":Ljava/lang/String;
    const-string/jumbo v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "OYN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_3

    .line 93
    return p0

    .line 86
    .end local v0    # "characteristics":Ljava/lang/String;
    .end local v2    # "version":Ljava/lang/String;
    :cond_1
    sput-object v1, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    goto :goto_0

    .line 92
    .restart local v0    # "characteristics":Ljava/lang/String;
    .restart local v2    # "version":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 96
    :cond_3
    const v3, 0x7f0b0cc6

    if-ne p0, v3, :cond_a

    .line 97
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const p0, 0x7f0b0cc2

    .line 311
    :cond_4
    :goto_2
    return p0

    .line 98
    :cond_5
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const p0, 0x7f0b0cc4

    goto :goto_2

    .line 99
    :cond_6
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const p0, 0x7f0b0cc3

    goto :goto_2

    .line 100
    :cond_7
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const p0, 0x7f0b0cc1

    goto :goto_2

    .line 101
    :cond_8
    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const p0, 0x7f0b0cc5

    goto :goto_2

    .line 102
    :cond_9
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0cc0

    goto :goto_2

    .line 103
    :cond_a
    const v3, 0x7f0b0dbf

    if-ne p0, v3, :cond_11

    .line 104
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const p0, 0x7f0b0dbd

    goto :goto_2

    .line 105
    :cond_b
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    const p0, 0x7f0b0dbb

    goto :goto_2

    .line 106
    :cond_d
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const p0, 0x7f0b0dbc

    goto/16 :goto_2

    .line 107
    :cond_e
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const p0, 0x7f0b0dba

    goto/16 :goto_2

    .line 108
    :cond_f
    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const p0, 0x7f0b0dbe

    goto/16 :goto_2

    .line 109
    :cond_10
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0db9

    goto/16 :goto_2

    .line 110
    :cond_11
    const v3, 0x7f0b0ce7

    if-ne p0, v3, :cond_16

    .line 111
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const p0, 0x7f0b0ce4

    goto/16 :goto_2

    .line 112
    :cond_12
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    const p0, 0x7f0b0ce6

    goto/16 :goto_2

    .line 113
    :cond_14
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const p0, 0x7f0b0ce5

    goto/16 :goto_2

    .line 114
    :cond_15
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0ce3

    goto/16 :goto_2

    .line 115
    :cond_16
    const v3, 0x7f0b0cec

    if-ne p0, v3, :cond_1b

    .line 116
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const p0, 0x7f0b0ce9

    goto/16 :goto_2

    .line 117
    :cond_17
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_18
    const p0, 0x7f0b0ceb

    goto/16 :goto_2

    .line 118
    :cond_19
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const p0, 0x7f0b0cea

    goto/16 :goto_2

    .line 119
    :cond_1a
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0ce8

    goto/16 :goto_2

    .line 120
    :cond_1b
    const v3, 0x7f0b0d24

    if-ne p0, v3, :cond_1d

    .line 121
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1c
    const p0, 0x7f0b0d23

    goto/16 :goto_2

    .line 122
    :cond_1d
    const v3, 0x7f0b0d2c

    if-ne p0, v3, :cond_24

    .line 123
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_1e
    const p0, 0x7f0b0d2a

    goto/16 :goto_2

    .line 124
    :cond_1f
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const p0, 0x7f0b0d28

    goto/16 :goto_2

    .line 125
    :cond_20
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const p0, 0x7f0b0d2b

    goto/16 :goto_2

    .line 126
    :cond_21
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const p0, 0x7f0b0d27

    goto/16 :goto_2

    .line 127
    :cond_22
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const p0, 0x7f0b0d26

    goto/16 :goto_2

    .line 128
    :cond_23
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d29

    goto/16 :goto_2

    .line 129
    :cond_24
    const v3, 0x7f0b0d2e

    if-ne p0, v3, :cond_25

    .line 130
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d2d

    goto/16 :goto_2

    .line 131
    :cond_25
    const v3, 0x7f0b0d3f

    if-ne p0, v3, :cond_29

    .line 132
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const p0, 0x7f0b0d3d

    goto/16 :goto_2

    .line 133
    :cond_26
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const p0, 0x7f0b0d3c

    goto/16 :goto_2

    .line 134
    :cond_27
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const p0, 0x7f0b0d3b

    goto/16 :goto_2

    .line 135
    :cond_28
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d3e

    goto/16 :goto_2

    .line 136
    :cond_29
    const v3, 0x7f0b0d4e

    if-ne p0, v3, :cond_2f

    .line 137
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const p0, 0x7f0b0d4c

    goto/16 :goto_2

    .line 138
    :cond_2a
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const p0, 0x7f0b0d4a

    goto/16 :goto_2

    .line 139
    :cond_2b
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    :cond_2c
    const p0, 0x7f0b0d4d

    goto/16 :goto_2

    .line 140
    :cond_2d
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const p0, 0x7f0b0d4b

    goto/16 :goto_2

    .line 141
    :cond_2e
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d49

    goto/16 :goto_2

    .line 142
    :cond_2f
    const v3, 0x7f0b0d54

    if-ne p0, v3, :cond_35

    .line 143
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    :cond_30
    const p0, 0x7f0b0d53

    goto/16 :goto_2

    .line 144
    :cond_31
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const p0, 0x7f0b0d51

    goto/16 :goto_2

    .line 145
    :cond_32
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    const p0, 0x7f0b0d52

    goto/16 :goto_2

    .line 146
    :cond_33
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const p0, 0x7f0b0d50

    goto/16 :goto_2

    .line 147
    :cond_34
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d4f

    goto/16 :goto_2

    .line 148
    :cond_35
    const v3, 0x7f0b0d64

    if-ne p0, v3, :cond_38

    .line 149
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const p0, 0x7f0b0d63

    goto/16 :goto_2

    .line 150
    :cond_36
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    const p0, 0x7f0b0d61

    goto/16 :goto_2

    .line 151
    :cond_37
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d62

    goto/16 :goto_2

    .line 152
    :cond_38
    const v3, 0x7f0b0d84

    if-ne p0, v3, :cond_3d

    .line 153
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    :cond_39
    const p0, 0x7f0b0d81

    goto/16 :goto_2

    .line 154
    :cond_3a
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const p0, 0x7f0b0d82

    goto/16 :goto_2

    .line 155
    :cond_3b
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const p0, 0x7f0b0d80

    goto/16 :goto_2

    .line 156
    :cond_3c
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d83

    goto/16 :goto_2

    .line 157
    :cond_3d
    const v3, 0x7f0b0dd3

    if-ne p0, v3, :cond_43

    .line 158
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_3e
    const p0, 0x7f0b0dd2

    goto/16 :goto_2

    .line 159
    :cond_3f
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    const p0, 0x7f0b0dd0

    goto/16 :goto_2

    .line 160
    :cond_40
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    const p0, 0x7f0b0dd1

    goto/16 :goto_2

    .line 161
    :cond_41
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    const p0, 0x7f0b0dcf

    goto/16 :goto_2

    .line 162
    :cond_42
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0dce

    goto/16 :goto_2

    .line 163
    :cond_43
    const v3, 0x7f0b0dd7

    if-ne p0, v3, :cond_47

    .line 164
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    :cond_44
    const p0, 0x7f0b0dd6

    goto/16 :goto_2

    .line 165
    :cond_45
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const p0, 0x7f0b0dd5

    goto/16 :goto_2

    .line 166
    :cond_46
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0dd4

    goto/16 :goto_2

    .line 167
    :cond_47
    const v3, 0x7f0b0ddb

    if-ne p0, v3, :cond_4b

    .line 168
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    :cond_48
    const p0, 0x7f0b0dda

    goto/16 :goto_2

    .line 169
    :cond_49
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    const p0, 0x7f0b0dd9

    goto/16 :goto_2

    .line 170
    :cond_4a
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0dd8

    goto/16 :goto_2

    .line 171
    :cond_4b
    const v3, 0x7f0b0de1

    if-ne p0, v3, :cond_51

    .line 172
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const p0, 0x7f0b0ddf

    goto/16 :goto_2

    .line 173
    :cond_4c
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    const p0, 0x7f0b0ddd

    goto/16 :goto_2

    .line 174
    :cond_4d
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    :cond_4e
    const p0, 0x7f0b0de0

    goto/16 :goto_2

    .line 175
    :cond_4f
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const p0, 0x7f0b0dde

    goto/16 :goto_2

    .line 176
    :cond_50
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0ddc

    goto/16 :goto_2

    .line 177
    :cond_51
    const v3, 0x7f0b0de7

    if-ne p0, v3, :cond_57

    .line 178
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    :cond_52
    const p0, 0x7f0b0de6

    goto/16 :goto_2

    .line 179
    :cond_53
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    const p0, 0x7f0b0de4

    goto/16 :goto_2

    .line 180
    :cond_54
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    const p0, 0x7f0b0de5

    goto/16 :goto_2

    .line 181
    :cond_55
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    const p0, 0x7f0b0de3

    goto/16 :goto_2

    .line 182
    :cond_56
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0de2

    goto/16 :goto_2

    .line 183
    :cond_57
    const v3, 0x7f0b0deb

    if-ne p0, v3, :cond_5b

    .line 184
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    :cond_58
    const p0, 0x7f0b0dea

    goto/16 :goto_2

    .line 185
    :cond_59
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    const p0, 0x7f0b0de9

    goto/16 :goto_2

    .line 186
    :cond_5a
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0de8

    goto/16 :goto_2

    .line 187
    :cond_5b
    const v3, 0x7f0b0def

    if-ne p0, v3, :cond_5f

    .line 188
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    :cond_5c
    const p0, 0x7f0b0dee

    goto/16 :goto_2

    .line 189
    :cond_5d
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    const p0, 0x7f0b0ded

    goto/16 :goto_2

    .line 190
    :cond_5e
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0dec

    goto/16 :goto_2

    .line 191
    :cond_5f
    const v3, 0x7f0b0df5

    if-ne p0, v3, :cond_65

    .line 192
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    const p0, 0x7f0b0df3

    goto/16 :goto_2

    .line 193
    :cond_60
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    const p0, 0x7f0b0df1

    goto/16 :goto_2

    .line 194
    :cond_61
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    :cond_62
    const p0, 0x7f0b0df4

    goto/16 :goto_2

    .line 195
    :cond_63
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    const p0, 0x7f0b0df2

    goto/16 :goto_2

    .line 196
    :cond_64
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0df0

    goto/16 :goto_2

    .line 197
    :cond_65
    const v3, 0x7f0b0df8

    if-ne p0, v3, :cond_67

    .line 198
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    const p0, 0x7f0b0df7

    goto/16 :goto_2

    .line 199
    :cond_66
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0df6

    goto/16 :goto_2

    .line 200
    :cond_67
    const v3, 0x7f0b0dfb

    if-ne p0, v3, :cond_69

    .line 201
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    const p0, 0x7f0b0dfa

    goto/16 :goto_2

    .line 202
    :cond_68
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0df9

    goto/16 :goto_2

    .line 203
    :cond_69
    const v3, 0x7f0b0dfe

    if-ne p0, v3, :cond_6b

    .line 204
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const p0, 0x7f0b0dfd

    goto/16 :goto_2

    .line 205
    :cond_6a
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0dfc

    goto/16 :goto_2

    .line 206
    :cond_6b
    const v3, 0x7f0b0e00

    if-ne p0, v3, :cond_6c

    .line 207
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0dff

    goto/16 :goto_2

    .line 208
    :cond_6c
    const v3, 0x7f0b0e03

    if-ne p0, v3, :cond_6e

    .line 209
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    const p0, 0x7f0b0e02

    goto/16 :goto_2

    .line 210
    :cond_6d
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e01

    goto/16 :goto_2

    .line 211
    :cond_6e
    const v3, 0x7f0b0e06

    if-ne p0, v3, :cond_70

    .line 212
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    const p0, 0x7f0b0e05

    goto/16 :goto_2

    .line 213
    :cond_6f
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e04

    goto/16 :goto_2

    .line 214
    :cond_70
    const v3, 0x7f0b0e09

    if-ne p0, v3, :cond_72

    .line 215
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    const p0, 0x7f0b0e08

    goto/16 :goto_2

    .line 216
    :cond_71
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e07

    goto/16 :goto_2

    .line 217
    :cond_72
    const v3, 0x7f0b0e0b

    if-ne p0, v3, :cond_73

    .line 218
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e0a

    goto/16 :goto_2

    .line 219
    :cond_73
    const v3, 0x7f0b0d17

    if-ne p0, v3, :cond_7a

    .line 220
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    const p0, 0x7f0b0d12

    goto/16 :goto_2

    .line 221
    :cond_74
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    const p0, 0x7f0b0d14

    goto/16 :goto_2

    .line 222
    :cond_75
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    :cond_76
    const p0, 0x7f0b0d16

    goto/16 :goto_2

    .line 223
    :cond_77
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    const p0, 0x7f0b0d15

    goto/16 :goto_2

    .line 224
    :cond_78
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    const p0, 0x7f0b0d13

    goto/16 :goto_2

    .line 225
    :cond_79
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d11

    goto/16 :goto_2

    .line 226
    :cond_7a
    const v3, 0x7f0b0dac

    if-ne p0, v3, :cond_7f

    .line 227
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    :cond_7b
    const p0, 0x7f0b0dab

    goto/16 :goto_2

    .line 228
    :cond_7c
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    const p0, 0x7f0b0da9

    goto/16 :goto_2

    .line 229
    :cond_7d
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    const p0, 0x7f0b0daa

    goto/16 :goto_2

    .line 230
    :cond_7e
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0da8

    goto/16 :goto_2

    .line 231
    :cond_7f
    const v3, 0x7f0b0e1d

    if-ne p0, v3, :cond_80

    .line 232
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e1c

    goto/16 :goto_2

    .line 233
    :cond_80
    const v3, 0x7f0b0d03

    if-ne p0, v3, :cond_84

    .line 234
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    :cond_81
    const p0, 0x7f0b0d02

    goto/16 :goto_2

    .line 235
    :cond_82
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const p0, 0x7f0b0d01

    goto/16 :goto_2

    .line 236
    :cond_83
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d00

    goto/16 :goto_2

    .line 237
    :cond_84
    const v3, 0x7f0b0d07

    if-ne p0, v3, :cond_88

    .line 238
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    :cond_85
    const p0, 0x7f0b0d06

    goto/16 :goto_2

    .line 239
    :cond_86
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    const p0, 0x7f0b0d05

    goto/16 :goto_2

    .line 240
    :cond_87
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d04

    goto/16 :goto_2

    .line 241
    :cond_88
    const v3, 0x7f0b0d89

    if-ne p0, v3, :cond_89

    .line 242
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d88

    goto/16 :goto_2

    .line 243
    :cond_89
    const v3, 0x7f0b0e25

    if-ne p0, v3, :cond_8e

    .line 244
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    :cond_8a
    const p0, 0x7f0b0e24

    goto/16 :goto_2

    .line 245
    :cond_8b
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    const p0, 0x7f0b0e22

    goto/16 :goto_2

    .line 246
    :cond_8c
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    const p0, 0x7f0b0e23

    goto/16 :goto_2

    .line 247
    :cond_8d
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e21

    goto/16 :goto_2

    .line 248
    :cond_8e
    const v3, 0x7f0b0ce2

    if-ne p0, v3, :cond_8f

    .line 249
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0ce1

    goto/16 :goto_2

    .line 250
    :cond_8f
    const v3, 0x7f0b0cf1

    if-ne p0, v3, :cond_90

    .line 251
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0cf0

    goto/16 :goto_2

    .line 252
    :cond_90
    const v3, 0x7f0b0d45

    if-ne p0, v3, :cond_94

    .line 253
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    :cond_91
    const p0, 0x7f0b0d44

    goto/16 :goto_2

    .line 254
    :cond_92
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    const p0, 0x7f0b0d43

    goto/16 :goto_2

    .line 255
    :cond_93
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d42

    goto/16 :goto_2

    .line 256
    :cond_94
    const v3, 0x7f0b0d72

    if-ne p0, v3, :cond_98

    .line 257
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    const p0, 0x7f0b0d6f

    goto/16 :goto_2

    .line 258
    :cond_95
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    const p0, 0x7f0b0d70

    goto/16 :goto_2

    .line 259
    :cond_96
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    const p0, 0x7f0b0d71

    goto/16 :goto_2

    .line 260
    :cond_97
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d6e

    goto/16 :goto_2

    .line 261
    :cond_98
    const v3, 0x7f0b0e1b

    if-ne p0, v3, :cond_9b

    .line 262
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    :cond_99
    const p0, 0x7f0b0e19

    goto/16 :goto_2

    .line 263
    :cond_9a
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e1a

    goto/16 :goto_2

    .line 264
    :cond_9b
    const v3, 0x7f0b0e0f

    if-ne p0, v3, :cond_9d

    .line 265
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    const p0, 0x7f0b0e0d

    goto/16 :goto_2

    .line 266
    :cond_9c
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e0e

    goto/16 :goto_2

    .line 267
    :cond_9d
    const v3, 0x7f0b0db8

    if-ne p0, v3, :cond_a1

    .line 268
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    :cond_9e
    const p0, 0x7f0b0db7

    goto/16 :goto_2

    .line 269
    :cond_9f
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    const p0, 0x7f0b0db5

    goto/16 :goto_2

    .line 270
    :cond_a0
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0db6

    goto/16 :goto_2

    .line 271
    :cond_a1
    const v3, 0x7f0b0dc3

    if-ne p0, v3, :cond_a5

    .line 272
    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a2

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a2

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    :cond_a2
    const p0, 0x7f0b0dc2

    goto/16 :goto_2

    .line 273
    :cond_a3
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    const p0, 0x7f0b0dc0

    goto/16 :goto_2

    .line 274
    :cond_a4
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0dc1

    goto/16 :goto_2

    .line 275
    :cond_a5
    const v3, 0x7f0b0e11

    if-ne p0, v3, :cond_a6

    .line 276
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e10

    goto/16 :goto_2

    .line 277
    :cond_a6
    const v3, 0x7f0b0cf9

    if-ne p0, v3, :cond_a7

    .line 278
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0cf8

    goto/16 :goto_2

    .line 279
    :cond_a7
    const v3, 0x7f0b0cfb

    if-ne p0, v3, :cond_a8

    .line 280
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0cfa

    goto/16 :goto_2

    .line 281
    :cond_a8
    const v3, 0x7f0b0d33

    if-ne p0, v3, :cond_ac

    .line 282
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    const p0, 0x7f0b0d2f

    goto/16 :goto_2

    .line 283
    :cond_a9
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    const p0, 0x7f0b0d30

    goto/16 :goto_2

    .line 284
    :cond_aa
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    const p0, 0x7f0b0d32

    goto/16 :goto_2

    .line 285
    :cond_ab
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d31

    goto/16 :goto_2

    .line 286
    :cond_ac
    const v3, 0x7f0b0d74

    if-ne p0, v3, :cond_ad

    .line 287
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d73

    goto/16 :goto_2

    .line 288
    :cond_ad
    const v3, 0x7f0b0d76

    if-ne p0, v3, :cond_ae

    .line 289
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d75

    goto/16 :goto_2

    .line 290
    :cond_ae
    const v3, 0x7f0b0d8b

    if-ne p0, v3, :cond_af

    .line 291
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d8a

    goto/16 :goto_2

    .line 292
    :cond_af
    const v3, 0x7f0b0d8d

    if-ne p0, v3, :cond_b0

    .line 293
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d8c

    goto/16 :goto_2

    .line 294
    :cond_b0
    const v3, 0x7f0b0d8f

    if-ne p0, v3, :cond_b1

    .line 295
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d8e

    goto/16 :goto_2

    .line 296
    :cond_b1
    const v3, 0x7f0b0d96

    if-ne p0, v3, :cond_b2

    .line 297
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0d95

    goto/16 :goto_2

    .line 298
    :cond_b2
    const v3, 0x7f0b0da1

    if-ne p0, v3, :cond_b3

    .line 299
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0da0

    goto/16 :goto_2

    .line 300
    :cond_b3
    const v3, 0x7f0b0da3

    if-ne p0, v3, :cond_b4

    .line 301
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0da2

    goto/16 :goto_2

    .line 302
    :cond_b4
    const v3, 0x7f0b0e2f

    if-ne p0, v3, :cond_b5

    .line 303
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e2e

    goto/16 :goto_2

    .line 304
    :cond_b5
    const v3, 0x7f0b0e2a

    if-ne p0, v3, :cond_4

    .line 305
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b6

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    :cond_b6
    const p0, 0x7f0b0e26

    goto/16 :goto_2

    .line 306
    :cond_b7
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    const p0, 0x7f0b0e27

    goto/16 :goto_2

    .line 307
    :cond_b8
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    const p0, 0x7f0b0e28

    goto/16 :goto_2

    .line 308
    :cond_b9
    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e29

    goto/16 :goto_2
.end method
