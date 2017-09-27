.class Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;
.super Landroid/os/AsyncTask;
.source "AppDataUsagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settingslib/net/UidDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItem:Lcom/android/settingslib/AppItem;

.field private final mProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private final mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/settingslib/net/UidDetailProvider;
    .param p2, "item"    # Lcom/android/settingslib/AppItem;
    .param p3, "target"    # Lcom/android/settings/datausage/AppDataUsagePreference;

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 125
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 126
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/AppItem;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mItem:Lcom/android/settingslib/AppItem;

    .line 127
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/AppDataUsagePreference;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;

    .line 124
    return-void
.end method

.method private static bindView(Lcom/android/settingslib/net/UidDetail;Landroid/preference/Preference;)V
    .locals 1
    .param p0, "detail"    # Lcom/android/settingslib/net/UidDetail;
    .param p1, "target"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    .line 149
    if-eqz p0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static bindView(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V
    .locals 6
    .param p0, "provider"    # Lcom/android/settingslib/net/UidDetailProvider;
    .param p1, "item"    # Lcom/android/settingslib/AppItem;
    .param p2, "target"    # Lcom/android/settings/datausage/AppDataUsagePreference;

    .prologue
    const/4 v5, 0x0

    .line 132
    iget v2, p1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p0, v2, v5}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    .line 133
    .local v0, "cachedDetail":Lcom/android/settingslib/net/UidDetail;
    if-eqz v0, :cond_0

    .line 134
    invoke-static {v0, p2}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/preference/Preference;)V

    .line 131
    :goto_0
    return-void

    .line 138
    :cond_0
    :try_start_0
    const-string/jumbo v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "target.mExecutor  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/datausage/AppDataUsagePreference;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v2, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;-><init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V

    sget-object v3, Lcom/android/settings/datausage/AppDataUsagePreference;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "ex":Ljava/util/concurrent/RejectedExecutionException;
    sput-boolean v5, Lcom/android/settings/datausage/AppDataUsagePreference;->sIsDataLoaded:Z

    .line 142
    const-string/jumbo v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RejectedExecutionException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/net/UidDetail;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 164
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/settingslib/net/UidDetail;)V
    .locals 1
    .param p1, "result"    # Lcom/android/settingslib/net/UidDetail;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-static {p1, v0}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/preference/Preference;)V

    .line 169
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, Lcom/android/settingslib/net/UidDetail;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->onPostExecute(Lcom/android/settingslib/net/UidDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->mTarget:Lcom/android/settings/datausage/AppDataUsagePreference;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/preference/Preference;)V

    .line 159
    return-void
.end method
