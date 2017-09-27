.class Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;
.super Landroid/os/AsyncTask;
.source "AppShortcutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAppListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;-><init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V

    return-void
.end method


# virtual methods
.method protected add()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get1(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get1(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->clear()V

    .line 496
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get1(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-wrap0(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->addAll(Ljava/util/Collection;)V

    .line 497
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get1(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->notifyDataSetChanged()V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-wrap2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V

    .line 493
    return-void
.end method

.method protected clear()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-wrap2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V

    .line 488
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get1(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get1(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->clear()V

    .line 490
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get1(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->notifyDataSetChanged()V

    .line 486
    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 482
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-wrap0(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 448
    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;>;"
    const/4 v4, 0x0

    .line 450
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-wrap2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V

    .line 452
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 453
    iget-object v6, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    new-instance v0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040168

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;-><init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;Landroid/content/Context;IILjava/util/List;)V

    invoke-static {v6, v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-set0(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    .line 454
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get0(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get1(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 455
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get4(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get4(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->clear()V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getPendingState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    .line 462
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->selectAppShortcutBixby(Ljava/util/List;)V

    .line 448
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 471
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-wrap1(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V

    .line 468
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 475
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "values":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 478
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 475
    return-void
.end method
