.class public Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
.super Ljava/lang/Exception;
.source "SecureStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/securestorage/SecureStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureStorageException"
.end annotation


# static fields
.field public static final SECURE_STORAGE_ERROR_AUTHENTICATION:Ljava/lang/String; = "Error: authentication failure"

.field public static final SECURE_STORAGE_ERROR_INPUT_DATA:Ljava/lang/String; = "Error: input data are incorrect"

.field public static final SECURE_STORAGE_ERROR_INTERNAL:Ljava/lang/String; = "Error: internal error"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
