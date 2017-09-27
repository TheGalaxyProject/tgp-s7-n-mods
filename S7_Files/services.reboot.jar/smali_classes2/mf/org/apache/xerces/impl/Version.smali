.class public Lmf/org/apache/xerces/impl/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final fImmutableVersion:Ljava/lang/String; = "@@VERSION@@"

.field public static fVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "@@VERSION@@"

    .line 33
    sput-object v0, Lmf/org/apache/xerces/impl/Version;->fVersion:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "@@VERSION@@"

    .line 43
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lmf/org/apache/xerces/impl/Version;->fVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    return-void
.end method
