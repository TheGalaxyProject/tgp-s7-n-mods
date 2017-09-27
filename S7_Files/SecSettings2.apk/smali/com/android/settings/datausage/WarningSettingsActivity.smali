.class public Lcom/android/settings/datausage/WarningSettingsActivity;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "WarningSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/WarningSettingsActivity$1;
    }
.end annotation


# instance fields
.field private mChangeRadio:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mSubId:I

.field private mWarning100:Landroid/widget/RadioButton;

.field private mWarning40:Landroid/widget/RadioButton;

.field private mWarning50:Landroid/widget/RadioButton;

.field private mWarning60:Landroid/widget/RadioButton;

.field private mWarning70:Landroid/widget/RadioButton;

.field private mWarning80:Landroid/widget/RadioButton;

.field private mWarning90:Landroid/widget/RadioButton;

.field private mWarningGroup:Landroid/widget/RadioGroup;

.field private mWarningOff:Landroid/widget/RadioButton;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mSubId:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning100:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning40:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning50:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning60:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning70:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning80:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning90:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarningOff:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/WarningSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/WarningSettingsActivity;->updatePolicy()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mSubId:I

    .line 126
    new-instance v0, Lcom/android/settings/datausage/WarningSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/WarningSettingsActivity$1;-><init>(Lcom/android/settings/datausage/WarningSettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mChangeRadio:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 43
    return-void
.end method

.method private updatePolicy()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 184
    const/16 v0, 0x25

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, "view":Landroid/view/View;
    const v6, 0x7f080143

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "view":Landroid/view/View;
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v6

    iput v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mSubId:I

    .line 71
    const v6, 0x7f110853

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarningGroup:Landroid/widget/RadioGroup;

    .line 72
    const v6, 0x7f110854

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarningOff:Landroid/widget/RadioButton;

    .line 73
    const v6, 0x7f110855

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning40:Landroid/widget/RadioButton;

    .line 74
    const v6, 0x7f110856

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning50:Landroid/widget/RadioButton;

    .line 75
    const v6, 0x7f110857

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning60:Landroid/widget/RadioButton;

    .line 76
    const v6, 0x7f110858

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning70:Landroid/widget/RadioButton;

    .line 77
    const v6, 0x7f110859

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning80:Landroid/widget/RadioButton;

    .line 78
    const v6, 0x7f11085a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning90:Landroid/widget/RadioButton;

    .line 79
    const v6, 0x7f11085b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning100:Landroid/widget/RadioButton;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c010e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "warningButtonText":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarningOff:Landroid/widget/RadioButton;

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning40:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning50:Landroid/widget/RadioButton;

    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning60:Landroid/widget/RadioButton;

    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning70:Landroid/widget/RadioButton;

    const/4 v7, 0x4

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning80:Landroid/widget/RadioButton;

    const/4 v7, 0x5

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning90:Landroid/widget/RadioButton;

    const/4 v7, 0x6

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning100:Landroid/widget/RadioButton;

    const/4 v7, 0x7

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 92
    .local v1, "sharedpre":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 93
    return-object v2

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c010f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "warningButtonValue":[Ljava/lang/String;
    const-string/jumbo v5, "off"

    .line 97
    .local v5, "warningValue":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "data_warning_set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "off"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    const-string/jumbo v6, "off"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/WarningSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "data_warning_set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mSubId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 105
    :cond_1
    :goto_0
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 106
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarningOff:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 122
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarningGroup:Landroid/widget/RadioGroup;

    iget-object v7, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mChangeRadio:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 123
    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "off"

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 108
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning40:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 109
    :cond_4
    const/4 v6, 0x2

    aget-object v6, v4, v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 110
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning50:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 111
    :cond_5
    const/4 v6, 0x3

    aget-object v6, v4, v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 112
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning60:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 113
    :cond_6
    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 114
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning70:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 115
    :cond_7
    const/4 v6, 0x5

    aget-object v6, v4, v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 116
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning80:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 117
    :cond_8
    const/4 v6, 0x6

    aget-object v6, v4, v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 118
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning90:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 119
    :cond_9
    const/4 v6, 0x7

    aget-object v6, v4, v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    iget-object v6, p0, Lcom/android/settings/datausage/WarningSettingsActivity;->mWarning100:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method
