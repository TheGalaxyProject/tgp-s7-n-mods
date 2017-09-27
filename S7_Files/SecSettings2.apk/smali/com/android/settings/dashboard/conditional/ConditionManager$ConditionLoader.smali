.class Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;
.super Landroid/os/AsyncTask;
.source "ConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/conditional/ConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConditionLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/settings/dashboard/conditional/Condition;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 227
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/conditional/Condition;>;"
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-static {v3}, Lcom/android/settings/dashboard/conditional/ConditionManager;->-get1(Lcom/android/settings/dashboard/conditional/ConditionManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "condition_state.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->-set0(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/io/File;)Ljava/io/File;

    .line 230
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-static {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->-get3(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-static {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->-get3(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->-wrap1(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/io/File;Ljava/util/ArrayList;)V

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-static {v1, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->-wrap0(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/util/ArrayList;)V

    .line 234
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "conditions"    # Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "conditions":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/conditional/Condition;>;"
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-static {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->-get0(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-static {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->-get0(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 241
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-static {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->-get2(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 242
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-static {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->-get2(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;

    invoke-interface {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;->onConditionsChanged()V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_0
    return-void
.end method
