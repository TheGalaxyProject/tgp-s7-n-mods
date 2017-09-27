.class Lcom/android/systemui/qs/tiles/MobileDataTile$15;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;->setDataRoaming(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$15;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$15;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->-wrap3(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$15;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState()V

    .line 458
    return-void
.end method
