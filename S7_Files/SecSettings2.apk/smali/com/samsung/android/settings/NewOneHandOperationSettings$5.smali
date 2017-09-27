.class Lcom/samsung/android/settings/NewOneHandOperationSettings$5;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/NewOneHandOperationSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/NewOneHandOperationSettings;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$5;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 221
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 217
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$5;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-wrap0(Lcom/samsung/android/settings/NewOneHandOperationSettings;I)V

    .line 212
    return-void
.end method
