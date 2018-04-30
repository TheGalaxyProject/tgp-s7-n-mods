.class public Landroid/support/v13/view/ViewCompat;
.super Landroid/support/v4/view/ViewCompat;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/view/ViewCompat$Api24ViewCompatImpl;,
        Landroid/support/v13/view/ViewCompat$BaseViewCompatImpl;,
        Landroid/support/v13/view/ViewCompat$ViewCompatImpl;
    }
.end annotation


# static fields
.field static IMPL:Landroid/support/v13/view/ViewCompat$ViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v13/view/ViewCompat$Api24ViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/view/ViewCompat$Api24ViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/view/ViewCompat;->IMPL:Landroid/support/v13/view/ViewCompat$ViewCompatImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v13/view/ViewCompat$BaseViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/view/ViewCompat;->IMPL:Landroid/support/v13/view/ViewCompat$ViewCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat;-><init>()V

    return-void
.end method

.method public static cancelDragAndDrop(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v13/view/ViewCompat;->IMPL:Landroid/support/v13/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v13/view/ViewCompat$ViewCompatImpl;->cancelDragAndDrop(Landroid/view/View;)V

    return-void
.end method

.method public static startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 6

    sget-object v0, Landroid/support/v13/view/ViewCompat;->IMPL:Landroid/support/v13/view/ViewCompat$ViewCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v13/view/ViewCompat$ViewCompatImpl;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public static updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .locals 1

    sget-object v0, Landroid/support/v13/view/ViewCompat;->IMPL:Landroid/support/v13/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/view/ViewCompat$ViewCompatImpl;->updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V

    return-void
.end method
