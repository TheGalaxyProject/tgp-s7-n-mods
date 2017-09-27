.class public final Lmf/javax/xml/datatype/DatatypeConstants$Field;
.super Ljava/lang/Object;
.source "DatatypeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/javax/xml/datatype/DatatypeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation


# instance fields
.field private final id:I

.field private final str:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lmf/javax/xml/datatype/DatatypeConstants$Field;->str:Ljava/lang/String;

    .line 207
    iput p2, p0, Lmf/javax/xml/datatype/DatatypeConstants$Field;->id:I

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILmf/javax/xml/datatype/DatatypeConstants$Field;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lmf/javax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lmf/javax/xml/datatype/DatatypeConstants$Field;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lmf/javax/xml/datatype/DatatypeConstants$Field;->str:Ljava/lang/String;

    return-object v0
.end method
