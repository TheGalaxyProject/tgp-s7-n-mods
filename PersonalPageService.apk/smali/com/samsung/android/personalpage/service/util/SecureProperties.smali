.class public Lcom/samsung/android/personalpage/service/util/SecureProperties;
.super Ljava/lang/Object;
.source "SecureProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/util/SecureProperties$NonSecureProperties;,
        Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;,
        Lcom/samsung/android/personalpage/service/util/SecureProperties$SecureStorageProperties;
    }
.end annotation


# static fields
.field private static SUPPORT_SECURE_STORAGE_FEATURE:Z = false

.field private static final TAG:Ljava/lang/String; = "SecureProperties"


# instance fields
.field private mImpl:Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/personalpage/service/util/SecureProperties;->SUPPORT_SECURE_STORAGE_FEATURE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/util/SecureProperties;->mImpl:Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/securestorage/SecureStorage;->isSupported()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/personalpage/service/util/SecureProperties;->SUPPORT_SECURE_STORAGE_FEATURE:Z

    :goto_0
    sget-boolean v0, Lcom/samsung/android/personalpage/service/util/SecureProperties;->SUPPORT_SECURE_STORAGE_FEATURE:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/personalpage/service/util/SecureProperties$SecureStorageProperties;->getInstance(Landroid/content/Context;)Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/util/SecureProperties;->mImpl:Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/util/SecureProperties;->mImpl:Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/personalpage/service/util/SecureProperties$NonSecureProperties;->getInstance(Landroid/content/Context;)Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/util/SecureProperties;->mImpl:Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;

    :cond_1
    return-void

    :cond_2
    sput-boolean v2, Lcom/samsung/android/personalpage/service/util/SecureProperties;->SUPPORT_SECURE_STORAGE_FEATURE:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "SecureProperties"

    const-string/jumbo v1, "SecureProperties: isProductShip"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/samsung/android/personalpage/service/util/SecureProperties;->SUPPORT_SECURE_STORAGE_FEATURE:Z

    goto :goto_0
.end method

.method protected static isSupportSecureStorage()Z
    .locals 3

    const-string/jumbo v0, "SecureProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSupportSecureStorage: SUPPORT_SECURE_STORAGE_FEATURE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/personalpage/service/util/SecureProperties;->SUPPORT_SECURE_STORAGE_FEATURE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/personalpage/service/util/SecureProperties;->SUPPORT_SECURE_STORAGE_FEATURE:Z

    return v0
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "SecureProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProperty: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/util/SecureProperties;->mImpl:Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "SecureProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProperty: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/util/SecureProperties;->mImpl:Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/personalpage/service/util/SecureProperties$PropertiesImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
