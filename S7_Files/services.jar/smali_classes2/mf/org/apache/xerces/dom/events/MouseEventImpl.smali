.class public Lmf/org/apache/xerces/dom/events/MouseEventImpl;
.super Lmf/org/apache/xerces/dom/events/UIEventImpl;
.source "MouseEventImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/events/MouseEvent;


# instance fields
.field private fAltKey:Z

.field private fButton:S

.field private fClientX:I

.field private fClientY:I

.field private fCtrlKey:Z

.field private fMetaKey:Z

.field private fRelatedTarget:Lmf/org/w3c/dom/events/EventTarget;

.field private fScreenX:I

.field private fScreenY:I

.field private fShiftKey:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/events/UIEventImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAltKey()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fAltKey:Z

    return v0
.end method

.method public getButton()S
    .locals 1

    .prologue
    .line 79
    iget-short v0, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fButton:S

    return v0
.end method

.method public getClientX()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fClientX:I

    return v0
.end method

.method public getClientY()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fClientY:I

    return v0
.end method

.method public getCtrlKey()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fCtrlKey:Z

    return v0
.end method

.method public getMetaKey()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fMetaKey:Z

    return v0
.end method

.method public getRelatedTarget()Lmf/org/w3c/dom/events/EventTarget;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fRelatedTarget:Lmf/org/w3c/dom/events/EventTarget;

    return-object v0
.end method

.method public getScreenX()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fScreenX:I

    return v0
.end method

.method public getScreenY()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fScreenY:I

    return v0
.end method

.method public getShiftKey()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fShiftKey:Z

    return v0
.end method

.method public initMouseEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/views/AbstractView;IIIIIZZZZSLmf/org/w3c/dom/events/EventTarget;)V
    .locals 2

    .prologue
    .line 90
    iput p6, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fScreenX:I

    .line 91
    iput p7, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fScreenY:I

    .line 92
    iput p8, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fClientX:I

    .line 93
    iput p9, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fClientY:I

    .line 94
    iput-boolean p10, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fCtrlKey:Z

    .line 95
    iput-boolean p11, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fAltKey:Z

    .line 96
    iput-boolean p12, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fShiftKey:Z

    .line 97
    iput-boolean p13, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fMetaKey:Z

    .line 98
    move/from16 v0, p14

    int-to-short v1, v0

    iput-short v1, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fButton:S

    .line 99
    move-object/from16 v0, p15

    iput-object v0, p0, Lmf/org/apache/xerces/dom/events/MouseEventImpl;->fRelatedTarget:Lmf/org/w3c/dom/events/EventTarget;

    .line 100
    invoke-super/range {p0 .. p5}, Lmf/org/apache/xerces/dom/events/UIEventImpl;->initUIEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/views/AbstractView;I)V

    .line 101
    return-void
.end method
