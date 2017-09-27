.class Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$3;
.super Ljava/lang/Object;
.source "AppShortcutList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    .line 203
    .local v0, "Item":Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    iget-boolean v1, v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIsActive:Z

    if-eqz v1, :cond_0

    .line 205
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 206
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->saveApplicationData(Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V

    .line 200
    :cond_0
    return-void
.end method
