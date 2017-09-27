.class Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;
.super Landroid/preference/Preference;
.source "ZenModeDNDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimePickerPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;,
        Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;
    }
.end annotation


# instance fields
.field private frag:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;

.field private mCallback:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private mHourOfDay:I

.field private mMinute:I

.field private mSummaryFormat:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->frag:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mHourOfDay:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mMinute:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;)Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->frag:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mgr"    # Landroid/app/FragmentManager;

    .prologue
    .line 721
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 722
    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    .line 723
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setPersistent(Z)V

    .line 724
    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$1;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;Landroid/app/FragmentManager;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 720
    return-void
.end method

.method private updateSummary()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 762
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 763
    .local v0, "c":Ljava/util/Calendar;
    iget v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mHourOfDay:I

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 764
    iget v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mMinute:I

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 765
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "time":Ljava/lang/String;
    iget v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mSummaryFormat:I

    if-eqz v2, :cond_0

    .line 767
    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mSummaryFormat:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 769
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 761
    return-void
.end method


# virtual methods
.method public setCallback(Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mCallback:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;

    .line 745
    return-void
.end method

.method public setSummaryFormat(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 750
    iput p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mSummaryFormat:I

    .line 751
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->updateSummary()V

    .line 749
    return-void
.end method

.method public setTime(II)V
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 755
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mCallback:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mCallback:Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;->onSetTime(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    :cond_0
    iput p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mHourOfDay:I

    .line 757
    iput p2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mMinute:I

    .line 758
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->updateSummary()V

    .line 754
    return-void

    .line 755
    :cond_1
    return-void
.end method
