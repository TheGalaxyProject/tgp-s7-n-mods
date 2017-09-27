.class public Lcom/samsung/android/settings/fmm/SimChangeAlert;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/fmm/SimChangeAlert$1;
    }
.end annotation


# static fields
.field private static SETTINGS_FMM_SIM_CHANGE_ALERT:I

.field private static SETTINGS_FMM_SIM_CHANGE_ALERT_ADD:I

.field private static SETTINGS_FMM_SIM_CHANGE_ALERT_CONTACT:I

.field private static SETTINGS_FMM_SIM_CHANGE_ALERT_SAVE:I

.field private static SETTINGS_FMM_SIM_CHANGE_ALERT_SWITCH:I

.field public static chkboxFlag:Z


# instance fields
.field public AlterMessageLengthFilter:Landroid/text/InputFilter;

.field private mActionBarLayout:Landroid/view/View;

.field private mAlertMessage:Landroid/widget/EditText;

.field private mContact:Landroid/widget/Button;

.field private mContent:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLinkedContactEdit:Landroid/widget/EditText;

.field private mLinkedContactTitle:Landroid/widget/TextView;

.field private mMaxToast:Landroid/widget/Toast;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTempName:Ljava/lang/String;

.field mView:Landroid/view/View;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_ADD:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_CONTACT:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mMaxToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mTempName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_ADD:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_CONTACT:I

    return p0
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/fmm/SimChangeAlert;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mMaxToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/fmm/SimChangeAlert;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mTempName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->addNewRecipient()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/fmm/SimChangeAlert;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->setTitleTextVisible(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->receiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Lcom/samsung/android/settings/fmm/SimChangeAlert$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$1;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->AlterMessageLengthFilter:Landroid/text/InputFilter;

    .line 69
    return-void
.end method

.method private addNewRecipient()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 209
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 210
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    .line 211
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    const v4, 0x7f04015d

    .line 210
    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 212
    .local v1, "MinusLayout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, v1

    .line 214
    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    .line 215
    .local v0, "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setFocus(Z)V

    .line 207
    .end local v0    # "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    .end local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b073e

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private enableDisableView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 626
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 628
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 629
    check-cast v0, Landroid/view/ViewGroup;

    .line 631
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 632
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->enableDisableView(Landroid/view/View;Z)V

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "idx":I
    :cond_0
    return-void
.end method

.method private setTitleTextVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 222
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactEdit:Landroid/widget/EditText;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 221
    return-void

    :cond_0
    move v0, v2

    .line 222
    goto :goto_0

    :cond_1
    move v1, v2

    .line 223
    goto :goto_1
.end method


# virtual methods
.method public DoSave()Z
    .locals 18

    .prologue
    .line 477
    new-instance v11, Lcom/samsung/android/settings/fmm/NVStore;

    invoke-direct {v11}, Lcom/samsung/android/settings/fmm/NVStore;-><init>()V

    .line 478
    .local v11, "filenv":Lcom/samsung/android/settings/fmm/NVStore;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .local v13, "nvData":Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Lcom/samsung/android/settings/fmm/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v9

    .line 480
    .local v9, "MTpwd":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v15

    if-eqz v15, :cond_1

    const-string/jumbo v8, "1"

    .line 482
    .local v8, "MTStatus":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b072d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "MTSender":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 484
    .local v6, "MTMsg":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "Imsi":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredICCID()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "IccId":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/samsung/android/settings/fmm/NVStore;->IsPhLockeEnabled()Z

    move-result v15

    if-eqz v15, :cond_2

    const-string/jumbo v5, "1"

    .line 487
    .local v5, "MTEnabled":Ljava/lang/String;
    :goto_1
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    if-eqz v6, :cond_0

    if-eqz v6, :cond_3

    const-string/jumbo v15, ""

    invoke-virtual {v6, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_3

    .line 491
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0b0742

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 492
    const/4 v15, 0x0

    return v15

    .line 480
    .end local v2    # "IccId":Ljava/lang/String;
    .end local v3    # "Imsi":Ljava/lang/String;
    .end local v5    # "MTEnabled":Ljava/lang/String;
    .end local v6    # "MTMsg":Ljava/lang/String;
    .end local v7    # "MTSender":Ljava/lang/String;
    .end local v8    # "MTStatus":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "0"

    .restart local v8    # "MTStatus":Ljava/lang/String;
    goto :goto_0

    .line 486
    .restart local v2    # "IccId":Ljava/lang/String;
    .restart local v3    # "Imsi":Ljava/lang/String;
    .restart local v6    # "MTMsg":Ljava/lang/String;
    .restart local v7    # "MTSender":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "0"

    .restart local v5    # "MTEnabled":Ljava/lang/String;
    goto :goto_1

    .line 496
    :cond_3
    const/4 v10, 0x0

    .line 498
    .local v10, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    if-ge v12, v15, :cond_9

    .line 499
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    .line 500
    .local v1, "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v15

    :goto_3
    if-nez v15, :cond_6

    .line 501
    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0b0743

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 503
    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setFocus(Z)V

    .line 504
    const/4 v15, 0x0

    return v15

    .line 500
    :cond_4
    const/4 v15, 0x1

    goto :goto_3

    .line 505
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 506
    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "00"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 512
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 514
    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_8

    .line 515
    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 506
    :cond_7
    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0b073c

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 508
    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setFocus(Z)V

    .line 509
    const/4 v15, 0x0

    return v15

    .line 517
    :cond_8
    const-string/jumbo v15, "none;"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 520
    .end local v1    # "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    :cond_9
    if-nez v10, :cond_a

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0b0744

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 522
    const/4 v15, 0x0

    return v15

    .line 524
    :cond_a
    :goto_5
    const/4 v15, 0x5

    if-eq v10, v15, :cond_b

    .line 525
    const-string/jumbo v15, "none;"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 531
    :cond_b
    const/4 v3, 0x0

    .line 533
    .local v3, "Imsi":Ljava/lang/String;
    const-string/jumbo v3, "0000"

    .line 536
    .local v3, "Imsi":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 537
    invoke-virtual {v11}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI2()Ljava/lang/String;

    move-result-object v4

    .line 538
    .local v4, "Imsi2":Ljava/lang/String;
    const/4 v4, 0x0

    .line 540
    .local v4, "Imsi2":Ljava/lang/String;
    const-string/jumbo v4, "0000"

    .line 541
    .local v4, "Imsi2":Ljava/lang/String;
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .end local v4    # "Imsi2":Ljava/lang/String;
    :goto_6
    const-string/jumbo v15, "SimChangeAlert"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "data formed for writing = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/settings/fmm/NVStore$datatype;->All:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/samsung/android/settings/fmm/NVStore;->writedata(Ljava/lang/String;Lcom/samsung/android/settings/fmm/NVStore$datatype;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v15}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "change_alert"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 565
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0b0738

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 567
    const/4 v15, 0x1

    return v15

    .line 542
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 545
    const-string/jumbo v16, "phone"

    .line 544
    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 546
    .local v14, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 548
    if-eqz v2, :cond_d

    if-eqz v2, :cond_e

    const-string/jumbo v15, ""

    invoke-virtual {v2, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_e

    .line 549
    :cond_d
    const-string/jumbo v2, "00000000"

    .line 552
    :cond_e
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 554
    .end local v14    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_f
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 563
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "change_alert"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7
.end method

.method public SetContactNumber(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v13, 0x3b

    const/4 v12, 0x0

    .line 571
    const/4 v2, 0x0

    .line 573
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 574
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    .line 576
    .local v0, "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 577
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_1

    .line 578
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .local v3, "count":I
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 579
    .local v8, "result":Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 580
    .local v7, "phNum":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v2, v3

    .line 573
    .end local v3    # "count":I
    .end local v7    # "phNum":Ljava/lang/String;
    .end local v8    # "result":Ljava/lang/String;
    .restart local v2    # "count":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 587
    .end local v0    # "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 589
    .local v5, "mViewIndex":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_2

    .line 590
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    .line 591
    iget-object v10, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    const v11, 0x7f04015d

    .line 590
    invoke-virtual {v9, v11, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 592
    .local v1, "MinusLayout":Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 593
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "mViewIndex":I
    .local v6, "mViewIndex":I
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    .line 594
    .restart local v0    # "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 595
    .restart local v8    # "result":Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 596
    .restart local v7    # "phNum":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v5, v6

    .end local v6    # "mViewIndex":I
    .restart local v5    # "mViewIndex":I
    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 570
    .end local v0    # "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    .end local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    .end local v7    # "phNum":Ljava/lang/String;
    .end local v8    # "result":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT:I

    .line 123
    sget v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT:I

    return v0
.end method

.method public init()V
    .locals 15

    .prologue
    const v14, 0x7f04015d

    const/4 v13, 0x0

    .line 400
    const/4 v3, 0x0

    .line 401
    .local v3, "index":I
    new-instance v2, Lcom/samsung/android/settings/fmm/NVStore;

    invoke-direct {v2}, Lcom/samsung/android/settings/fmm/NVStore;-><init>()V

    .line 403
    .local v2, "filenv":Lcom/samsung/android/settings/fmm/NVStore;
    invoke-virtual {v2}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, "rec1":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "none"

    invoke-virtual {v6, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_7

    .line 406
    :cond_0
    const-string/jumbo v6, ""

    .line 416
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v7

    .line 418
    .local v7, "rec2":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v11, "none"

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    .line 419
    :cond_1
    const-string/jumbo v7, ""

    .line 429
    :goto_1
    invoke-virtual {v2}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v8

    .line 431
    .local v8, "rec3":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "none"

    invoke-virtual {v8, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_9

    .line 432
    :cond_2
    const-string/jumbo v8, ""

    .line 442
    :goto_2
    invoke-virtual {v2}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v9

    .line 444
    .local v9, "rec4":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string/jumbo v11, "none"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    .line 445
    :cond_3
    const-string/jumbo v9, ""

    .line 455
    :goto_3
    invoke-virtual {v2}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    .line 457
    .local v10, "rec5":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "none"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_b

    .line 458
    :cond_4
    const-string/jumbo v10, ""

    .line 467
    :goto_4
    invoke-virtual {v2}, Lcom/samsung/android/settings/fmm/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, "msg":Ljava/lang/String;
    if-eqz v5, :cond_5

    if-eqz v5, :cond_6

    const-string/jumbo v11, "Keep this message."

    invoke-virtual {v5, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_6

    .line 470
    :cond_5
    const-string/jumbo v5, ""

    .line 473
    :cond_6
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    invoke-virtual {v11, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 399
    return-void

    .line 408
    .end local v5    # "msg":Ljava/lang/String;
    .end local v7    # "rec2":Ljava/lang/String;
    .end local v8    # "rec3":Ljava/lang/String;
    .end local v9    # "rec4":Ljava/lang/String;
    .end local v10    # "rec5":Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    .line 409
    iget-object v12, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    .line 408
    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 410
    .local v1, "MinusLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    .line 412
    .local v0, "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 421
    .end local v0    # "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    .end local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    .restart local v7    # "rec2":Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    .line 422
    iget-object v12, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    .line 421
    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 423
    .restart local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 424
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    .line 425
    .restart local v0    # "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto/16 :goto_1

    .line 434
    .end local v0    # "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    .end local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    .restart local v8    # "rec3":Ljava/lang/String;
    :cond_9
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    .line 435
    iget-object v12, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    .line 434
    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 436
    .restart local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    .line 438
    .restart local v0    # "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v8}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto/16 :goto_2

    .line 447
    .end local v0    # "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    .end local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    .restart local v9    # "rec4":Ljava/lang/String;
    :cond_a
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    .line 448
    iget-object v12, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    .line 447
    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 449
    .restart local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 450
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    .line 451
    .restart local v0    # "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto/16 :goto_3

    .line 460
    .end local v0    # "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    .end local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    .restart local v10    # "rec5":Ljava/lang/String;
    :cond_b
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    .line 461
    iget-object v12, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    .line 460
    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 462
    .restart local v1    # "MinusLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    iget-object v11, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;

    .line 464
    .restart local v0    # "ChildView":Lcom/samsung/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto/16 :goto_4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 138
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 139
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 140
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v3

    const v4, 0x7f110643

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/ToggleSwitch;->setNextFocusDownId(I)V

    .line 141
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 142
    const-string/jumbo v5, "change_alert"

    .line 141
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 143
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 134
    return-void

    :cond_0
    move v1, v2

    .line 141
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 351
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 353
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 354
    return-void

    .line 357
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 358
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SetContactNumber(Ljava/util/ArrayList;)V

    .line 350
    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 342
    if-eqz p2, :cond_0

    .line 343
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->chkboxFlag:Z

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->showNotificationChargeDialog()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->setHasOptionsMenu(Z)V

    .line 127
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x0

    .line 201
    const v0, 0x7f0b1809

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 202
    const/4 v1, 0x2

    .line 201
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 204
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 200
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 228
    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    .line 229
    const v2, 0x7f040291

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    .line 230
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v5, 0x7f110648

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    .line 232
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v5, 0x7f110644

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 234
    .local v1, "textView":Landroid/widget/TextView;
    const v2, 0x7f0b073b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 237
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/samsung/android/settings/fmm/SimChangeAlert$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$3;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 253
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v5, 0x7f110643

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    .line 254
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    new-array v5, v3, [Landroid/text/InputFilter;

    .line 255
    iget-object v6, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->AlterMessageLengthFilter:Landroid/text/InputFilter;

    aput-object v6, v5, v4

    .line 254
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 258
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v5, 0x7f110646

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactTitle:Landroid/widget/TextView;

    .line 259
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v5, 0x7f110645

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactEdit:Landroid/widget/EditText;

    .line 260
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mLinkedContactEdit:Landroid/widget/EditText;

    new-instance v5, Lcom/samsung/android/settings/fmm/SimChangeAlert$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$4;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 269
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v5, 0x7f110647

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, "createBtn":Landroid/view/View;
    new-instance v2, Lcom/samsung/android/settings/fmm/SimChangeAlert$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$5;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    const v5, 0x7f11064a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContact:Landroid/widget/Button;

    .line 280
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContact:Landroid/widget/Button;

    new-instance v5, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->init()V

    .line 298
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mAlertMessage:Landroid/widget/EditText;

    new-instance v5, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$7;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 334
    iget-object v5, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "change_alert"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    .line 334
    :goto_0
    invoke-direct {p0, v5, v2}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->enableDisableView(Landroid/view/View;Z)V

    .line 337
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    return-object v2

    :cond_2
    move v2, v4

    .line 335
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 604
    const-string/jumbo v2, "input_method"

    .line 603
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 605
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 607
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 609
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 610
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 601
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 196
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 189
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_SAVE:I

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_SAVE:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->DoSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->finishFragment()V

    .line 193
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/samsung/android/settings/fmm/SimChangeAlert$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$2;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    iput-object v1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->receiver:Landroid/content/BroadcastReceiver;

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_SWITCH:I

    .line 616
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/fmm/SimChangeAlert;->SETTINGS_FMM_SIM_CHANGE_ALERT_SWITCH:I

    if-eqz p2, :cond_1

    const/16 v0, 0x3e8

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 617
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->enableDisableView(Landroid/view/View;Z)V

    .line 618
    if-eqz p2, :cond_0

    .line 619
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->chkboxFlag:Z

    if-eqz v0, :cond_2

    .line 614
    :cond_0
    :goto_1
    return-void

    .line 616
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 620
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->showNotificationChargeDialog()V

    goto :goto_1
.end method

.method public showNotificationChargeDialog()V
    .locals 6

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 364
    const v4, 0x7f0401a1

    const/4 v5, 0x0

    .line 363
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 365
    .local v2, "mDialogLayout":Landroid/view/View;
    const v3, 0x7f1104cc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 366
    .local v0, "chkbox":Landroid/widget/CheckBox;
    new-instance v3, Lcom/samsung/android/settings/fmm/SimChangeAlert$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$8;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 371
    const v4, 0x7f0b0439

    .line 370
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 372
    new-instance v4, Lcom/samsung/android/settings/fmm/SimChangeAlert$9;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$9;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V

    const v5, 0x104000a

    .line 370
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 380
    new-instance v4, Lcom/samsung/android/settings/fmm/SimChangeAlert$10;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$10;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V

    const/high16 v5, 0x1040000

    .line 370
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 388
    new-instance v4, Lcom/samsung/android/settings/fmm/SimChangeAlert$11;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert$11;-><init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V

    .line 370
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 362
    .local v1, "dialog":Landroid/app/Dialog;
    return-void
.end method
