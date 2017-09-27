.class public Lcom/samsung/accessory/manager/authentication/CertBlacklister;
.super Landroid/os/Binder;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;,
        Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;,
        Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_BLOCKED_KEY:Ljava/lang/String; = "cover_authentication_blocked"

.field private static final BLACKLIST_ROOT:Ljava/lang/String;

.field public static final BLACKLIST_SEPARATOR:Ljava/lang/String; = ","

.field private static final DBG:Z

.field public static final PUBKEY_BLACKLIST_KEY:Ljava/lang/String; = "cover_pubkey_blacklist"

.field public static final PUBKEY_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CertBlacklister"

.field private static mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

.field private static mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

.field private static mIsBlocked:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mIsBlocked:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->DBG:Z

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ANDROID_DATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/misc/saccessory_manager/keychain/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->BLACKLIST_ROOT:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->BLACKLIST_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cover_pubkey_blacklist.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mIsBlocked:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->registerObservers(Landroid/content/ContentResolver;)V

    .line 210
    return-void
.end method

.method private buildAuthenticationSettingObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 222
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;

    const-string/jumbo v1, "cover_authentication_blocked"

    invoke-direct {v0, v1, p1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 215
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    const-string/jumbo v1, "cover_pubkey_blacklist"

    .line 216
    const-string/jumbo v2, "pubkey"

    .line 217
    sget-object v3, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    .line 215
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private registerObservers(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x1

    .line 227
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    .line 229
    const-string/jumbo v0, "cover_pubkey_blacklist"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 231
    sget-object v1, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    .line 228
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    const-string/jumbo v0, "cover_authentication_blocked"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 237
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->buildAuthenticationSettingObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;

    move-result-object v1

    .line 234
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 225
    return-void
.end method


# virtual methods
.method public isAuthenticationBlocked()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mIsBlocked:Z

    return v0
.end method

.method public isThisKeyBlacklisted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->isThisKeyBlacklisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readFile()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->readFile()V

    .line 74
    return-void
.end method

.method public setCertBlacklistListener(Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    .prologue
    .line 62
    sput-object p1, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    .line 61
    return-void
.end method
