.class public Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
.super Ljava/lang/Object;
.source "XIncludeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/xinclude/XIncludeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UnparsedEntity"
.end annotation


# instance fields
.field public augmentations:Lmf/org/apache/xerces/xni/Augmentations;

.field public baseURI:Ljava/lang/String;

.field public expandedSystemId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public notation:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public systemId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 2744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2785
    if-ne p1, p2, :cond_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2756
    if-eqz p1, :cond_0

    .line 2759
    instance-of v0, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    if-nez v0, :cond_1

    .line 2763
    return v1

    .line 2757
    :cond_0
    return v1

    .line 2760
    :cond_1
    check-cast p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    .line 2761
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDuplicate(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2774
    if-nez p1, :cond_1

    .line 2781
    :cond_0
    return v2

    .line 2774
    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    if-eqz v0, :cond_0

    .line 2775
    check-cast p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    .line 2776
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v2

    .line 2777
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->publicId:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->publicId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2778
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->expandedSystemId:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->expandedSystemId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2779
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2776
    const/4 v0, 0x1

    return v0
.end method
