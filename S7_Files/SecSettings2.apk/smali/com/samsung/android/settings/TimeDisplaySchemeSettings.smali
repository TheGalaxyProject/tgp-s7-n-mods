.class public Lcom/samsung/android/settings/TimeDisplaySchemeSettings;
.super Landroid/app/DialogFragment;
.source "TimeDisplaySchemeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBeijingTime:Landroid/widget/RadioButton;

.field private mLocalTime:Landroid/widget/RadioButton;

.field private mTimeType:I

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/TimeDisplaySchemeSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mTimeType:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/TimeDisplaySchemeSettings;I)V
    .locals 0
    .param p1, "timeType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->setTimeDisplayScheme(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mTimeType:I

    .line 34
    return-void
.end method

.method private getTimeDisplayScheme()I
    .locals 4

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "timeType":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "time_display_scheme"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 142
    return v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    const-string/jumbo v0, "TimeDisplaySchemeSettings"

    const-string/jumbo v1, "initView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const v0, 0x7f110693

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mBeijingTime:Landroid/widget/RadioButton;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mBeijingTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v0, 0x7f110694

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mLocalTime:Landroid/widget/RadioButton;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mLocalTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->setTimeDisplaySchemeInit()V

    .line 89
    return-void
.end method

.method public static newInstance(I)Lcom/samsung/android/settings/TimeDisplaySchemeSettings;
    .locals 3
    .param p0, "title"    # I

    .prologue
    .line 47
    new-instance v1, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;

    invoke-direct {v1}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;-><init>()V

    .line 48
    .local v1, "frag":Lcom/samsung/android/settings/TimeDisplaySchemeSettings;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method

.method private setTimeDisplayScheme(I)V
    .locals 3
    .param p1, "timeType"    # I

    .prologue
    const/4 v2, 0x0

    .line 146
    if-nez p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_display_scheme"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_display_scheme"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setTimeDisplaySchemeInit()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->getTimeDisplayScheme()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mTimeType:I

    .line 132
    iget v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mTimeType:I

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mBeijingTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 129
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mLocalTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    iput v1, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mTimeType:I

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mLocalTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 114
    :goto_0
    return-void

    .line 123
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mTimeType:I

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mBeijingTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x7f110694
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0402e7

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mView:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->initView(Landroid/view/View;)V

    .line 65
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mView:Landroid/view/View;

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/samsung/android/settings/TimeDisplaySchemeSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings$1;-><init>(Lcom/samsung/android/settings/TimeDisplaySchemeSettings;)V

    const v2, 0x7f0b153f

    .line 65
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 84
    const v1, 0x7f0b1540

    .line 65
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 110
    const-string/jumbo v0, "TimeDisplaySchemeSettings"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 109
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 104
    return-void
.end method
