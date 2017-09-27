.class public Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
.super Landroid/preference/Preference;
.source "PaymentDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;,
        Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;,
        Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;
    }
.end annotation


# static fields
.field private static mPlmnSIM:[Ljava/lang/String;


# instance fields
.field private SimState_1:Ljava/lang/String;

.field private SimState_2:Ljava/lang/String;

.field private dialog:Landroid/app/ProgressDialog;

.field entries:[Ljava/lang/CharSequence;

.field entryValues:[Ljava/lang/CharSequence;

.field private hasClicked:Z

.field private index:I

.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;

.field public final mContext:Landroid/content/Context;

.field private final mHiddenValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mSpinner:Landroid/widget/Spinner;

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field simIcon:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->index:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -get3()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->hasClicked:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->index:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->isMultiSim()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mValues:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mHiddenValues:Ljava/util/ArrayList;

    .line 84
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 86
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$1;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090008

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$1;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 97
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "ril.ICC_TYPE"

    const-string/jumbo v1, "0"

    invoke-static {v3, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_1:Ljava/lang/String;

    .line 101
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "ril.ICC_TYPE"

    const-string/jumbo v1, "0"

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_2:Ljava/lang/String;

    .line 104
    :cond_0
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->onUpdateAdapter()V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->index:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 128
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setPersistent(Z)V

    .line 129
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 82
    return-void
.end method

.method public static getRatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "netType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 471
    const-string/jumbo v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "mDataType":[Ljava/lang/String;
    const-string/jumbo v1, "UMTS"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HSPA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HSDPA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HSUPA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    const-string/jumbo v1, "HSPAP"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 472
    if-nez v1, :cond_0

    .line 473
    const-string/jumbo v1, "TD-SCDMA"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 472
    if-eqz v1, :cond_1

    .line 474
    :cond_0
    const-string/jumbo v1, " 3G"

    return-object v1

    .line 475
    :cond_1
    const-string/jumbo v1, "LTE"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 476
    const-string/jumbo v1, " 4G"

    return-object v1

    .line 478
    :cond_2
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private getSimIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "Sim_id"    # I

    .prologue
    .line 484
    const/4 v4, 0x0

    .line 485
    .local v4, "sim_icon1":I
    const/4 v5, 0x0

    .line 486
    .local v5, "sim_icon2":I
    const/4 v2, 0x0

    .line 489
    .local v2, "retDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 490
    const-string/jumbo v7, "select_icon_1"

    .line 489
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    .line 491
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 492
    const-string/jumbo v7, "select_icon_2"

    .line 491
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 497
    :goto_0
    if-nez p1, :cond_0

    move v3, v4

    .line 499
    .local v3, "ret_sim_icon":I
    :goto_1
    const-string/jumbo v1, ""

    .line 500
    .local v1, "resName":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 529
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "drawable"

    invoke-virtual {p0, v1, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 531
    .local v2, "retDrawable":Landroid/graphics/drawable/Drawable;
    return-object v2

    .line 493
    .end local v1    # "resName":Ljava/lang/String;
    .end local v3    # "ret_sim_icon":I
    .local v2, "retDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 497
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v3, v5

    .restart local v3    # "ret_sim_icon":I
    goto :goto_1

    .line 502
    .restart local v1    # "resName":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v1, "@drawable/sim_card_ic_01"

    goto :goto_2

    .line 505
    :pswitch_1
    const-string/jumbo v1, "@drawable/sim_card_ic_02"

    goto :goto_2

    .line 508
    :pswitch_2
    const-string/jumbo v1, "@drawable/sim_card_ic_call"

    goto :goto_2

    .line 511
    :pswitch_3
    const-string/jumbo v1, "@drawable/sim_card_ic_sms"

    goto :goto_2

    .line 514
    :pswitch_4
    const-string/jumbo v1, "@drawable/sim_card_ic_mms"

    goto :goto_2

    .line 517
    :pswitch_5
    const-string/jumbo v1, "@drawable/sim_card_ic_internet"

    goto :goto_2

    .line 520
    :pswitch_6
    const-string/jumbo v1, "@drawable/sim_card_ic_home"

    goto :goto_2

    .line 523
    :pswitch_7
    const-string/jumbo v1, "@drawable/sim_card_ic_office"

    goto :goto_2

    .line 526
    :pswitch_8
    const-string/jumbo v1, "@drawable/sim_card_ic_heart"

    goto :goto_2

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private isMultiSim()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 563
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public chinaDisabled_offslot(I)Z
    .locals 7
    .param p1, "slot"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 535
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 536
    const-string/jumbo v3, "phone1_on"

    .line 535
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v0, 0x1

    .line 537
    .local v0, "PhoneOnMode1":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 538
    const-string/jumbo v3, "phone2_on"

    .line 537
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    const/4 v1, 0x1

    .line 539
    .local v1, "PhoneOnMode2":Z
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "ril.ICC_TYPE"

    const-string/jumbo v3, "0"

    invoke-static {v6, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_1:Ljava/lang/String;

    .line 540
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "ril.ICC_TYPE"

    const-string/jumbo v3, "0"

    invoke-static {v5, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_2:Ljava/lang/String;

    .line 542
    const-string/jumbo v2, "PaymentDropDownPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SimState_1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string/jumbo v2, "PaymentDropDownPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SimState_2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    if-nez p1, :cond_3

    .line 546
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_1:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 547
    :cond_0
    return v5

    .line 535
    .end local v0    # "PhoneOnMode1":Z
    .end local v1    # "PhoneOnMode2":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "PhoneOnMode1":Z
    goto :goto_0

    .line 537
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "PhoneOnMode2":Z
    goto :goto_1

    .line 548
    :cond_3
    if-ne p1, v5, :cond_5

    .line 549
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_2:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 550
    :cond_4
    return v5

    .line 553
    :cond_5
    return v6
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 193
    return-void
.end method

.method public getEntryArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 292
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 293
    const-string/jumbo v3, "select_name_1"

    .line 292
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "sim1_name":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 295
    const-string/jumbo v3, "select_name_2"

    .line 294
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "sim2_name":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 298
    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 297
    return-object v2
.end method

.method public getPhonePLMNName(I)Ljava/lang/String;
    .locals 8
    .param p1, "sim_Id"    # I

    .prologue
    .line 428
    const-string/jumbo v2, ""

    .line 429
    .local v2, "retNumber":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b1033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "unknownPLMN":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 431
    .local v1, "networkType":Ljava/lang/String;
    const/4 v0, 0x1

    .line 433
    .local v0, "isEngAlpha":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v3

    .line 434
    .local v3, "servicestate":I
    const-string/jumbo v5, "PaymentDropDownPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "slot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " servicestate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string/jumbo v5, "persist.radio.plmnname"

    invoke-static {p1, v5, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 439
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040299

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    :goto_0
    if-eqz v0, :cond_1

    .line 462
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v5, "gsm.network.type"

    const-string/jumbo v6, "0"

    invoke-static {p1, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getRatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 465
    :cond_1
    const-string/jumbo v5, "PaymentDropDownPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "slot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " retNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " getRatString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getRatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-object v2

    .line 441
    :cond_2
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 442
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10402b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 444
    :cond_3
    const-string/jumbo v5, "CMCC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "CHINA MOBILE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 445
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040795

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 446
    :cond_5
    const-string/jumbo v5, "CHN-UNICOM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "CHN-CUGSM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 447
    :cond_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040796

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 448
    :cond_7
    const-string/jumbo v5, "Chunghwa Telecom"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 449
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040797

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 450
    :cond_8
    const-string/jumbo v5, "Far EasTone"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 451
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040798

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 452
    :cond_9
    const-string/jumbo v5, "VIBO"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string/jumbo v5, "T Star"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 453
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104079a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 454
    :cond_b
    const-string/jumbo v5, "TW Mobile"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 455
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104079b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 456
    :cond_c
    const-string/jumbo v5, "China Telecom"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 457
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10407a5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 459
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "res"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 557
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 559
    .local v0, "resId":I
    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 201
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    return-void

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v1, p1

    .line 206
    check-cast v1, Landroid/view/ViewGroup;

    .line 207
    .local v1, "vg":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 208
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 209
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 210
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->notifyChanged()V

    .line 199
    return-void
.end method

.method public onUpdateAdapter()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 303
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v0, v3

    const-string/jumbo v1, "1"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entryValues:[Ljava/lang/CharSequence;

    .line 304
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getEntryArray()[Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, "n_Entry":[Ljava/lang/String;
    iput-object v8, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    .line 310
    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "ril.ICC_TYPE"

    const-string/jumbo v2, "0"

    invoke-static {v3, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 311
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "ril.ICC_TYPE"

    const-string/jumbo v2, "0"

    invoke-static {v4, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 315
    :cond_0
    const/4 v9, 0x0

    .line 317
    .local v9, "preferredSim":I
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getPreferredSimSlot()I

    move-result v9

    .line 318
    const/4 v0, -0x1

    if-ne v9, v0, :cond_1

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->index:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_1
    :goto_0
    iput v9, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->index:I

    .line 329
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "@layout/nfc_sim_dropdown_list_view_row"

    const-string/jumbo v3, "layout"

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    iget v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->index:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListAdapter:Landroid/widget/ListAdapter;

    .line 302
    return-void

    .line 324
    :catch_0
    move-exception v7

    .line 325
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v0, "PaymentDropDownPreference"

    const-string/jumbo v1, "Dual SWP nullpointerexception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 321
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v6

    .line 322
    .local v6, "e":Ljava/lang/NoSuchMethodError;
    const-string/jumbo v0, "PaymentDropDownPreference"

    const-string/jumbo v1, "Dual SWP not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public setCallback(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mCallback:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;

    .line 147
    return-void
.end method

.method public setPLMNName(Ljava/lang/String;I)V
    .locals 9
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "Slot"    # I

    .prologue
    const/4 v8, 0x1

    const v7, 0x7f0b1033

    const/4 v6, 0x0

    .line 402
    const-string/jumbo v3, "PaymentDropDownPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPLMN Name() plmn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 405
    .local v1, "mSimState":[Ljava/lang/String;
    const-string/jumbo v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "mSimMaster":Ljava/lang/String;
    const-string/jumbo v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    aget-object v3, v1, v6

    aput-object v3, v1, v8

    .line 409
    const-string/jumbo v3, "0"

    aput-object v3, v1, v6

    .line 412
    :cond_0
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 413
    if-ne p2, v2, :cond_1

    .line 414
    sget-object v4, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    const-string/jumbo v3, "0"

    aget-object v5, v1, v2

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, p1

    :goto_1
    aput-object v3, v4, v2

    .line 416
    if-nez p2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_1:Ljava/lang/String;

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 417
    sget-object v3, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 412
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 419
    :cond_3
    if-ne p2, v8, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->SimState_2:Ljava/lang/String;

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    sget-object v3, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mPlmnSIM:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    .line 401
    :cond_4
    return-void
.end method

.method public setResult(I)Z
    .locals 8
    .param p1, "clicked"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 333
    move v2, p1

    .line 335
    .local v2, "setClicked":I
    iget-boolean v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->hasClicked:Z

    if-eqz v3, :cond_0

    .line 336
    iput-boolean v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->hasClicked:Z

    .line 337
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->chinaDisabled_offslot(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V

    .line 339
    .local v0, "handler":Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;
    new-instance v1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V

    .line 340
    .local v1, "handler2":Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0b095c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->dialog:Landroid/app/ProgressDialog;

    .line 341
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;ILcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 369
    return v7

    .line 372
    .end local v0    # "handler":Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;
    .end local v1    # "handler2":Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;
    :cond_0
    return v4
.end method

.method public setSelectedItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSelectedItem(IZ)V

    .line 155
    return-void
.end method

.method public setSelectedItem(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "doCall"    # Z

    .prologue
    .line 160
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 161
    .local v1, "value":Ljava/lang/Object;
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mCallback:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mCallback:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;

    invoke-interface {v2, p1, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;->onItemSelected(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 165
    iput p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->index:I

    .line 166
    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 167
    .local v0, "disableDependents":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->notifyDependencyChange(Z)V

    .line 159
    return-void

    .line 162
    .end local v0    # "disableDependents":Z
    :cond_1
    return-void

    .line 166
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelectedValue(Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "doCall"    # Z

    .prologue
    .line 171
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entryValues:[Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 173
    .local v0, "i":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 174
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSelectedItem(IZ)V

    .line 170
    :cond_0
    return-void
.end method
