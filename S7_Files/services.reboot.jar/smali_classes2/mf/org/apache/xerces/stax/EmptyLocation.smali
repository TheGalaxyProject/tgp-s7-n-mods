.class public final Lmf/org/apache/xerces/stax/EmptyLocation;
.super Ljava/lang/Object;
.source "EmptyLocation.java"

# interfaces
.implements Lmf/javax/xml/stream/Location;


# static fields
.field private static final EMPTY_LOCATION_INSTANCE:Lmf/org/apache/xerces/stax/EmptyLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lmf/org/apache/xerces/stax/EmptyLocation;

    invoke-direct {v0}, Lmf/org/apache/xerces/stax/EmptyLocation;-><init>()V

    .line 35
    sput-object v0, Lmf/org/apache/xerces/stax/EmptyLocation;->EMPTY_LOCATION_INSTANCE:Lmf/org/apache/xerces/stax/EmptyLocation;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmf/org/apache/xerces/stax/EmptyLocation;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lmf/org/apache/xerces/stax/EmptyLocation;->EMPTY_LOCATION_INSTANCE:Lmf/org/apache/xerces/stax/EmptyLocation;

    return-object v0
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 72
    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 60
    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 51
    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    return-object v0
.end method
