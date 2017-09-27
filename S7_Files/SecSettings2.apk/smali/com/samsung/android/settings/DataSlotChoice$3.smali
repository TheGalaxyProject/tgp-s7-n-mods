.class Lcom/samsung/android/settings/DataSlotChoice$3;
.super Ljava/lang/Object;
.source "DataSlotChoice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/DataSlotChoice;->onRoamingDisplayMobileDataOnAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DataSlotChoice;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DataSlotChoice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/DataSlotChoice;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/samsung/android/settings/DataSlotChoice$3;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 448
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 449
    const-string/jumbo v0, "DataSlotChoice"

    const-string/jumbo v1, " onRoamingDisplayMobileDataOnAlert onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void
.end method
