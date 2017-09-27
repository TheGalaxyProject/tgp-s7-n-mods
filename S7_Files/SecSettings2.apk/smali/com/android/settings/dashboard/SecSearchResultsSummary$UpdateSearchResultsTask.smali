.class Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;
.super Landroid/os/AsyncTask;
.source "SecSearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SecSearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSearchResultsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private realCount:I

.field final synthetic this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/dashboard/SecSearchResultsSummary;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->realCount:I

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/SecSearchResultsSummary;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    const/4 v1, 0x4

    new-array v0, v1, [Landroid/database/Cursor;

    .line 150
    .local v0, "cursors":[Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/search/SecIndex;->searchTile(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v0, v3

    .line 151
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/search/SecIndex;->searchSubMenu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v0, v4

    .line 152
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/search/SecIndex;->searchTileByKeyword(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 153
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/SecIndex;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/SecIndex;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/search/SecIndex;->searchSubMenuByKeyword(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 154
    aget-object v1, v0, v3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    aget-object v2, v0, v4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->realCount:I

    .line 155
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 146
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap8(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 165
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget v4, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->realCount:I

    invoke-static {v2, v4}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap2(Lcom/android/settings/dashboard/SecSearchResultsSummary;I)V

    .line 166
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v2, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap3(Lcom/android/settings/dashboard/SecSearchResultsSummary;Landroid/database/Cursor;)V

    .line 167
    iget-object v4, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap4(Lcom/android/settings/dashboard/SecSearchResultsSummary;Z)V

    .line 168
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_3

    const/4 v1, 0x1

    .line 169
    .local v1, "visible":Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v2, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap1(Lcom/android/settings/dashboard/SecSearchResultsSummary;Z)V

    .line 175
    .end local v1    # "visible":Z
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getPendingState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    const-string/jumbo v0, "Search"

    .line 177
    .local v0, "nlgString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-get3(Lcom/android/settings/dashboard/SecSearchResultsSummary;)Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 178
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "SearchSetting"

    const-string/jumbo v5, "match"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 188
    :goto_3
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    .line 160
    .end local v0    # "nlgString":Ljava/lang/String;
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 167
    goto :goto_0

    .line 168
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_1

    .line 170
    .end local v1    # "visible":Z
    :cond_4
    if-eqz p1, :cond_0

    .line 171
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 182
    .restart local v0    # "nlgString":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 183
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "SearchSetting"

    const-string/jumbo v5, "match"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 186
    :cond_6
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    iget-object v2, v2, Lcom/android/settings/dashboard/SecSearchResultsSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 160
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 141
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings/dashboard/SecSearchResultsSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/SecSearchResultsSummary;->-wrap7(Lcom/android/settings/dashboard/SecSearchResultsSummary;)V

    .line 137
    return-void
.end method
