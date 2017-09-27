.class Lcom/samsung/android/settings/wifi/ListAnimationController$1;
.super Ljava/lang/Object;
.source "ListAnimationController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/ListAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/ListAnimationController;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$1;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 170
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$1;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get3(Lcom/samsung/android/settings/wifi/ListAnimationController;)I

    move-result v4

    sub-int v1, p3, v4

    .line 171
    .local v1, "clickedPos":I
    invoke-static {}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiSettings.VI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AccessPoint clicked - position:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mHeadersCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$1;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get3(Lcom/samsung/android/settings/wifi/ListAnimationController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$1;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get4(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 173
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$1;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get2(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/AccessPointListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getAccessPointList()Ljava/util/List;

    move-result-object v3

    .line 174
    .local v3, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 175
    const-string/jumbo v4, "WifiSettings.VI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onClick - position:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 178
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 179
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v4, v2, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    if-eqz v4, :cond_2

    move-object v0, v2

    .line 180
    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    .line 181
    .local v0, "apPref":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$1;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get4(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;->onItemClick(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V

    .line 169
    .end local v0    # "apPref":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    .end local v2    # "preference":Landroid/preference/Preference;
    .end local v3    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    :cond_2
    :goto_0
    return-void

    .line 184
    :cond_3
    const-string/jumbo v4, "WifiSettings.VI"

    const-string/jumbo v5, "onItemClick - listener is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
