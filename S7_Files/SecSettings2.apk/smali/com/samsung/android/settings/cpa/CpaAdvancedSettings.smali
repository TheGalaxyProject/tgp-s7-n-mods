.class public Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "CpaAdvancedSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mApn:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDns1:Landroid/preference/EditTextPreference;

.field private mDns2:Landroid/preference/EditTextPreference;

.field private mFirstTime:Z

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRegExpn:Ljava/lang/String;

.field private mRegExpn1:Ljava/lang/String;

.field private mRegExpn_Domain_num:Ljava/lang/String;

.field private mRegExpn_Domain_num1:Ljava/lang/String;

.field private mRegExpn_IP:Ljava/lang/String;

.field private mRegExpn_Pwd:Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const-class v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    .line 129
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "apn"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "proxy"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "port"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "user"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 135
    const-string/jumbo v1, "server"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "password"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "mmsc"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "mcc"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "mnc"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "numeric"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "mmsproxy"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 142
    const-string/jumbo v1, "mmsport"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "authtype"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 144
    const-string/jumbo v1, "type"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "protocol"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 146
    const-string/jumbo v1, "carrier_enabled"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 147
    const-string/jumbo v1, "bearer"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 148
    const-string/jumbo v1, "roaming_protocol"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 129
    sput-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->sProjection:[Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 81
    const-string/jumbo v0, "^[a-z0-9A-Z]+([-._/a-z0-9A-Z]?)+[a-z0-9A-Z]@[0-9a-z]+[-.0-9a-z]+[0-9a-z]$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "^[a-z0-9A-Z]@[0-9a-z]+[-.0-9a-z]+[0-9a-z]$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn1:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "^[a-z0-9A-Z]+([-._/a-z0-9A-Z]?)+[a-z0-9A-Z]@[0-9]*$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Domain_num:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "^[a-z0-9A-Z]@[0-9]*$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Domain_num1:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "^[a-z0-9A-Z!#$%&()*+-./:;<>=?@\\[\\]_\\{\\}]{1,16}$"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Pwd:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_IP:Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$1;-><init>(Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    .line 65
    return-void
.end method

.method protected static checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 779
    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNotSet:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    .line 782
    :cond_1
    return-object p0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 749
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 750
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNotSet:Ljava/lang/String;

    return-object v0

    .line 752
    :cond_1
    return-object p1
.end method

.method private fillUi()V
    .locals 13

    .prologue
    .line 246
    sget-object v10, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fillUi(), isFirstTime? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", newAPN? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "apnType":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    if-eqz v10, :cond_3

    .line 250
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    .line 252
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 253
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x3

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 254
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x4

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 255
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 256
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x7

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 258
    iget-boolean v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    if-eqz v10, :cond_0

    .line 259
    const-string/jumbo v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, "numeric":Ljava/lang/String;
    sget-object v10, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "numeric = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_0

    .line 264
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, "mcc":Ljava/lang/String;
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 268
    .local v7, "mnc":Ljava/lang/String;
    iput-object v7, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    .line 269
    iput-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    .line 273
    .end local v6    # "mcc":Ljava/lang/String;
    .end local v7    # "mnc":Ljava/lang/String;
    .end local v8    # "numeric":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xe

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 274
    .local v1, "authVal":I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_4

    .line 275
    const/4 v10, 0x1

    if-lt v1, v10, :cond_1

    const/4 v10, 0x2

    if-le v1, v10, :cond_2

    .line 276
    :cond_1
    const/4 v1, 0x2

    .line 278
    :cond_2
    sget-object v10, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fillUi() : mCursor.getInt(AUTH_TYPE_INDEX) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    add-int/lit8 v11, v1, -0x1

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 284
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "kddi_cpa_static_dns1"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "dns1":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "kddi_cpa_static_dns2"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "dns2":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 287
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 290
    .end local v1    # "authVal":I
    .end local v4    # "dns1":Ljava/lang/String;
    .end local v5    # "dns2":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    .line 296
    .restart local v4    # "dns1":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    .line 297
    .restart local v5    # "dns2":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 301
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 306
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "authVal":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 308
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 309
    .local v3, "authValIndex":I
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v10, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 310
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0c006d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 311
    .local v9, "values":[Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    aget-object v11, v9, v3

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    .end local v3    # "authValIndex":I
    .end local v9    # "values":[Ljava/lang/String;
    :goto_2
    return-void

    .line 281
    .end local v2    # "authVal":Ljava/lang/String;
    .end local v4    # "dns1":Ljava/lang/String;
    .end local v5    # "dns2":Ljava/lang/String;
    .restart local v1    # "authVal":I
    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    .end local v1    # "authVal":I
    .restart local v4    # "dns1":Ljava/lang/String;
    .restart local v5    # "dns2":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_1

    .line 313
    .restart local v2    # "authVal":Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    sget-object v11, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNotSet:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 671
    const/4 v1, 0x0

    .line 672
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "apn":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 674
    .local v5, "user":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, "passwd":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, "proxy":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, "port":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_1

    .line 679
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b143d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 687
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 680
    .restart local v1    # "errorMsg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_2

    .line 681
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0aac

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 682
    .local v1, "errorMsg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_3

    .line 683
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0aad

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMsg":Ljava/lang/String;
    goto :goto_0

    .line 684
    .local v1, "errorMsg":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v7, :cond_0

    .line 685
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0aa8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMsg":Ljava/lang/String;
    goto :goto_0
.end method

.method private isValidIP(Ljava/lang/String;)Z
    .locals 7
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 498
    if-nez p1, :cond_0

    .line 499
    return v5

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_IP:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 502
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 504
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 505
    return v6

    .line 507
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidIP : Valid IP == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return v6

    .line 512
    :cond_2
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidIP : unValid IP == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return v5
.end method

.method private isValidPort(Ljava/lang/String;)Z
    .locals 7
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 517
    if-nez p1, :cond_0

    .line 518
    return v5

    .line 520
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 521
    return v6

    .line 523
    :cond_1
    const/4 v1, 0x0

    .line 526
    .local v1, "port_int":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 533
    const v2, 0xffff

    if-gt v1, v2, :cond_2

    if-gez v1, :cond_3

    .line 534
    :cond_2
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidPort : unValid Port == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return v5

    .line 527
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "It\'s not number type!!!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return v5

    .line 537
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidPort : Valid Port == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return v6
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 737
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 738
    :cond_0
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNotSet:Ljava/lang/String;

    return-object v2

    .line 740
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 741
    .local v1, "password":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 742
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 744
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private validateAndSave(Z)Z
    .locals 13
    .param p1, "force"    # Z

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 609
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "apn":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateAndSave()force = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-direct {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_1

    .line 617
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_2

    .line 618
    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return v10

    .line 613
    :cond_1
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showDialog(I)V

    .line 614
    return v10

    .line 623
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v11, :cond_3

    .line 625
    return v10

    .line 628
    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 632
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "apn"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string/jumbo v6, "proxy"

    iget-object v7, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string/jumbo v6, "port"

    iget-object v7, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string/jumbo v6, "user"

    iget-object v7, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string/jumbo v6, "password"

    iget-object v7, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, "authVal":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 640
    const-string/jumbo v6, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    :cond_4
    const-string/jumbo v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, "numeric":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateAndSave numeric = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string/jumbo v3, ""

    .line 647
    .local v3, "mnc":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 649
    .local v2, "mcc":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_5

    .line 650
    invoke-virtual {v4, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 651
    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 653
    iput-object v3, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    .line 654
    iput-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    .line 656
    :cond_5
    const-string/jumbo v6, "numeric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "CURRENT 1"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 659
    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "CURRENT 2"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 661
    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "CURRENT 3"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string/jumbo v6, "current"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 665
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 667
    return v11
.end method


# virtual methods
.method public isValidID(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 13
    .param p1, "inputEmail"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x40

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 432
    if-nez p1, :cond_0

    .line 433
    sget-object v8, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "isValidID : inputEmail == null"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 437
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 438
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 440
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 442
    .local v4, "p":Ljava/util/regex/Pattern;
    iget-object v8, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn1:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 444
    .local v5, "p1":Ljava/util/regex/Pattern;
    iget-object v8, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Domain_num:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 445
    .local v6, "p2":Ljava/util/regex/Pattern;
    iget-object v8, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Domain_num1:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 447
    .local v7, "p3":Ljava/util/regex/Pattern;
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 448
    .local v1, "limitId":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    sub-int v0, v8, v9

    .line 450
    .local v0, "limitDomain":I
    const/16 v8, 0x18

    if-le v1, v8, :cond_2

    .line 451
    sget-object v8, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isValidID : limitId == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 453
    :cond_2
    const/16 v8, 0x14

    if-le v0, v8, :cond_3

    .line 454
    sget-object v8, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isValidID : limitDomain == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 456
    :cond_3
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 457
    :cond_4
    sget-object v8, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isValidID : domain made only numberic!!  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 461
    :cond_5
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 462
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 463
    .local v3, "m1":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 465
    :cond_6
    sget-object v8, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isValidID : Valid id == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 469
    :cond_7
    sget-object v8, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isValidID : Invalid id == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8
.end method

.method public isValidPwd(Ljava/lang/String;)Z
    .locals 6
    .param p1, "inputPwd"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 475
    if-nez p1, :cond_0

    .line 476
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "inputPwd : inputPwd == null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return v4

    .line 481
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 482
    return v5

    .line 484
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRegExpn_Pwd:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 485
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 487
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 488
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isValidPwd : Vaild pwd"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return v5

    .line 492
    :cond_2
    sget-object v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isValidPwd : Invalid pwd"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return v4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 183
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    const v4, 0x7f080045

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->addPreferencesFromResource(I)V

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 188
    .local v2, "ps":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b141c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNotSet:Ljava/lang/String;

    .line 189
    const-string/jumbo v4, "apn_apn"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    .line 190
    const-string/jumbo v4, "apn_http_proxy"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    .line 191
    const-string/jumbo v4, "apn_http_port"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    .line 192
    const-string/jumbo v4, "apn_user"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    .line 193
    const-string/jumbo v4, "apn_password"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    .line 194
    const-string/jumbo v4, "dns1"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    .line 195
    const-string/jumbo v4, "dns2"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    .line 197
    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    const-string/jumbo v4, "auth_type"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    .line 205
    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 208
    .local v3, "tempIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 211
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "action":Ljava/lang/String;
    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    .line 215
    const-string/jumbo v4, "com.samsung.android.settings.cpa.CpaAdvancedSettings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 216
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    .line 217
    const-string/jumbo v4, "new"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    .line 223
    sget-object v4, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    sget-object v5, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v7, v7}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    .line 225
    sget-object v4, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCursor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->fillUi()V

    .line 182
    return-void

    :cond_0
    move v4, v5

    .line 213
    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->finish()V

    .line 220
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    const v3, 0x104000a

    .line 693
    if-nez p1, :cond_0

    .line 694
    invoke-direct {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 697
    const v2, 0x7f0b143b

    .line 696
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 699
    new-instance v2, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$3;-><init>(Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;)V

    const v3, 0x7f0b087d

    .line 696
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 707
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 708
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 709
    const v2, 0x7f0b123e

    .line 708
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 711
    const v2, 0x7f0b0ad7

    .line 708
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 715
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 579
    packed-switch p1, :pswitch_data_0

    .line 589
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 581
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->setResult(I)V

    .line 583
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "kddi_cpa_added"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 584
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->finish()V

    .line 586
    :cond_0
    return v2

    .line 579
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 242
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 239
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7f0b0aa7

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 337
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v6, "auth_type"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 340
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 341
    .local v1, "index":I
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 343
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0c006d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "values":[Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v1    # "index":I
    .end local v5    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v9

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return v8

    .line 349
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v6, "apn_http_port"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, p2

    .line 350
    check-cast v3, Ljava/lang/String;

    .line 351
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidPort(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 353
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 354
    :catch_1
    move-exception v0

    .line 355
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return v8

    .line 359
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0aa8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    .line 360
    return v8

    .line 362
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "apn_apn"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v3, p2

    .line 363
    check-cast v3, Ljava/lang/String;

    .line 365
    .restart local v3    # "value":Ljava/lang/String;
    const-string/jumbo v6, ".au-net.ne.jp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 366
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0aa9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    .line 367
    return v8

    .line 369
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "apn_user"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v3, p2

    .line 370
    check-cast v3, Ljava/lang/String;

    .line 371
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidID(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 372
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 374
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0aaa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    .line 375
    return v8

    .line 377
    .end local v3    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "apn_password"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v3, p2

    .line 378
    check-cast v3, Ljava/lang/String;

    .line 379
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidPwd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 380
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 382
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0b0aab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    .line 383
    return v8

    .line 386
    .end local v3    # "value":Ljava/lang/String;
    :cond_8
    const-string/jumbo v6, "dns1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object v3, p2

    .line 387
    check-cast v3, Ljava/lang/String;

    .line 388
    .restart local v3    # "value":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidIP(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "kddi_cpa_static_dns2"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "value2":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "kddi_cpa_static_dns1"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 393
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 394
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v8}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 396
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, v9}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 399
    .end local v4    # "value2":Ljava/lang/String;
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    .line 400
    return v8

    .line 402
    .end local v3    # "value":Ljava/lang/String;
    :cond_b
    const-string/jumbo v6, "dns2"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, p2

    .line 403
    check-cast v3, Ljava/lang/String;

    .line 404
    .restart local v3    # "value":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->isValidIP(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 405
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "kddi_cpa_static_dns2"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 408
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    .line 409
    return v8
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 720
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 722
    if-nez p1, :cond_0

    .line 723
    invoke-direct {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 726
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 719
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 232
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    .line 234
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 594
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 595
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const-string/jumbo v0, "pos"

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 593
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 801
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 803
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 804
    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 805
    const-string/jumbo v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    const-string/jumbo v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showAlertDialogAboutInvalid(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 417
    if-eqz p1, :cond_0

    .line 418
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 419
    .local v0, "errorDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b143b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 420
    new-instance v1, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings$2;-><init>(Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 425
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 426
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 427
    return-void

    .line 416
    .end local v0    # "errorDialog":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method
