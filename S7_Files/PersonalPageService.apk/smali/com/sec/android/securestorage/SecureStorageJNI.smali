.class public final Lcom/sec/android/securestorage/SecureStorageJNI;
.super Ljava/lang/Object;
.source "SecureStorageJNI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
    }
.end annotation


# static fields
.field private static secureStorage:Lcom/sec/android/securestorage/SecureStorageJNI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-direct {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;-><init>()V

    sput-object v0, Lcom/sec/android/securestorage/SecureStorageJNI;->secureStorage:Lcom/sec/android/securestorage/SecureStorageJNI;

    .line 285
    const-string/jumbo v0, "secure_storage_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/securestorage/SecureStorageJNI;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sec/android/securestorage/SecureStorageJNI;->secureStorage:Lcom/sec/android/securestorage/SecureStorageJNI;

    return-object v0
.end method


# virtual methods
.method public native decrypt([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native decrypt([BB)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native decrypt([BLjava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native delete(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native delete(Ljava/lang/String;B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native encrypt([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native encrypt([BB)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native encrypt([BLjava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native eraseKey()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native get(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native get(Ljava/lang/String;B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native get(Ljava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native getVersion()I
.end method

.method public native initialize()I
.end method

.method public native isKeyProvisioned()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native isSupported()Z
.end method

.method public native provisionKey([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native put(Ljava/lang/String;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native put(Ljava/lang/String;[BB)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method

.method public native put(Ljava/lang/String;[BLjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;
        }
    .end annotation
.end method
