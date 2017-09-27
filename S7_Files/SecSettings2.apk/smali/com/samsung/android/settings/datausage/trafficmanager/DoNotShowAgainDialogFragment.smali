.class public Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;
.super Landroid/app/DialogFragment;
.source "DoNotShowAgainDialogFragment.java"


# instance fields
.field private mChecked:Z

.field private mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

.field private mDonotShowCheckBox:Landroid/widget/CheckBox;

.field private mDonotShowContainer:Landroid/view/View;

.field private mWlanUpdateCheckBox:Landroid/widget/CheckBox;

.field private mWlanUpdateChecked:Z

.field private mWlanUpdateContainer:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mChecked:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Lcom/android/settings/datausage/DataUsageSummary;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mDonotShowCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mChecked:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mChecked:Z

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/settings/datausage/DataUsageSummary;

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mChecked:Z

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    .line 49
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 177
    const-string/jumbo v0, "DoNotShowAgainDialog"

    const-string/jumbo v1, "cancel dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    const-string/jumbo v17, "donnotshow_checked"

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mChecked:Z

    .line 66
    const-string/jumbo v17, "wlan_update_checked"

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    .line 69
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "titleResId"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 72
    .local v14, "titleResId":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "positiveResId"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 73
    .local v10, "posResId":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "negativeResId"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 74
    .local v8, "negResId":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "bodyResId"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 75
    .local v3, "bodyResId":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "bodystr"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "bodyString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "isneedsendsms"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 78
    .local v7, "isNeedSendSms":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    .line 79
    const v18, 0x7f0400da

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 78
    invoke-virtual/range {v17 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 80
    .local v16, "v":Landroid/view/View;
    const v17, 0x7f110338

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateCheckBox:Landroid/widget/CheckBox;

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    const v17, 0x7f110337

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateContainer:Landroid/view/View;

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateContainer:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v17, 0x7f1100f4

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mDonotShowCheckBox:Landroid/widget/CheckBox;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mDonotShowCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mChecked:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    const v17, 0x7f110339

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mDonotShowContainer:Landroid/view/View;

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mDonotShowContainer:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v5, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 103
    new-instance v18, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$3;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;Z)V

    .line 101
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 137
    new-instance v18, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment$4;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;)V

    .line 101
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 148
    const/16 v18, 0x1

    .line 101
    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 150
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 151
    const v17, 0x7f110336

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 152
    .local v15, "tv":Landroid/widget/TextView;
    if-lez v3, :cond_2

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const v20, 0x7f0b0f14

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 154
    .local v11, "showString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0b14ab    # 1.8487E38f

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 155
    .local v13, "terms":Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 156
    .local v9, "pos1":I
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 158
    .local v12, "sp":Landroid/text/SpannableString;
    :try_start_0
    new-instance v17, Landroid/text/style/URLSpan;

    const-string/jumbo v18, "http://www.bizport.cn/webpage/agreement_flow.jsp"

    invoke-direct/range {v17 .. v18}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v9

    const/16 v19, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v12, v0, v9, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    if-eqz v12, :cond_1

    .line 163
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d01fe

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 171
    .end local v9    # "pos1":I
    .end local v11    # "showString":Ljava/lang/String;
    .end local v12    # "sp":Landroid/text/SpannableString;
    .end local v13    # "terms":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    return-object v17

    .line 159
    .restart local v9    # "pos1":I
    .restart local v11    # "showString":Ljava/lang/String;
    .restart local v12    # "sp":Landroid/text/SpannableString;
    .restart local v13    # "terms":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 160
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v17, "DoNotShowAgainDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getAgreementDialog: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v9    # "pos1":I
    .end local v11    # "showString":Ljava/lang/String;
    .end local v12    # "sp":Landroid/text/SpannableString;
    .end local v13    # "terms":Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 168
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    const-string/jumbo v0, "donnotshow_checked"

    iget-boolean v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    const-string/jumbo v0, "wlan_update_checked"

    iget-boolean v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->mWlanUpdateChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    :cond_0
    return-void
.end method
