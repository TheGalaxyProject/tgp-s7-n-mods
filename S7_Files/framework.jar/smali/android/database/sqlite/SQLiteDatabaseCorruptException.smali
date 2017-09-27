.class public Landroid/database/sqlite/SQLiteDatabaseCorruptException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteDatabaseCorruptException.java"


# static fields
.field public static final SQLITE_CORRUPT:I = 0xb

.field public static final SQLITE_CORRUPT_EXTRA:I = 0x20b

.field public static final SQLITE_NOTADB:I = 0x1a


# instance fields
.field private mCorruptCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    .line 30
    const/16 v0, 0xb

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 30
    const/16 v1, 0xb

    iput v1, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    .line 36
    new-instance v0, Landroid/database/sqlite/SQLiteExceptionLog;

    iget v1, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    invoke-direct {v0, v1, p1}, Landroid/database/sqlite/SQLiteExceptionLog;-><init>(ILjava/lang/String;)V

    .line 37
    .local v0, "codeParser":Landroid/database/sqlite/SQLiteExceptionLog;
    iget v1, v0, Landroid/database/sqlite/SQLiteExceptionLog;->errCode:I

    iput v1, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    .line 34
    return-void
.end method


# virtual methods
.method public getCorruptCode()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorruptCode:I

    return v0
.end method
