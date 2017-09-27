.class public Lcom/samsung/android/settings/datausage/networkconnect/ManagaAppDataChnPreference;
.super Landroid/preference/Preference;
.source "ManagaAppDataChnPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# instance fields
.field private final MANAGE_APP_DATA_INTENT:Ljava/lang/String;

.field private mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string/jumbo v0, "com.samsung.settings.NETWORKMANAGER"

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ManagaAppDataChnPreference;->MANAGE_APP_DATA_INTENT:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 43
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "actualSubscriberId":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method protected onClick()V
    .locals 5

    .prologue
    .line 49
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 50
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 51
    .local v2, "mSubId":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/ManagaAppDataChnPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/networkconnect/ManagaAppDataChnPreference;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "mSubscriberId":Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 53
    .local v1, "mSlotIndex":I
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.settings.NETWORKMANAGER"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "mSubscriberId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/ManagaAppDataChnPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "subId"    # I
    .param p3, "services"    # Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ManagaAppDataChnPreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 33
    iput p2, p0, Lcom/samsung/android/settings/datausage/networkconnect/ManagaAppDataChnPreference;->mSubId:I

    .line 34
    iput-object p3, p0, Lcom/samsung/android/settings/datausage/networkconnect/ManagaAppDataChnPreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/ManagaAppDataChnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0c58

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/ManagaAppDataChnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/ManagaAppDataChnPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/ManagaAppDataChnPreference;->setIntent(Landroid/content/Intent;)V

    .line 31
    return-void
.end method
