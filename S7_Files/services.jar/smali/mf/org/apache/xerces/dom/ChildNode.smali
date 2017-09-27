.class public abstract Lmf/org/apache/xerces/dom/ChildNode;
.super Lmf/org/apache/xerces/dom/NodeImpl;
.source "ChildNode.java"


# static fields
.field static final serialVersionUID:J = -0x54d3ce1bf89da1b2L


# instance fields
.field protected nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

.field protected previousSibling:Lmf/org/apache/xerces/dom/ChildNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/NodeImpl;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 62
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 99
    iput-object v1, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 100
    iput-object v1, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 103
    return-object v0
.end method

.method public getNextSibling()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    return-object v0
.end method

.method public getParentNode()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    goto :goto_0
.end method

.method public getPreviousSibling()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final parentNode()Lmf/org/apache/xerces/dom/NodeImpl;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    goto :goto_0
.end method

.method final previousSibling()Lmf/org/apache/xerces/dom/ChildNode;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
