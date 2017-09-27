.class Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;
.super Landroid/os/AsyncTask;
.source "DataUsageReminderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;
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
.field private final mItem:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

.field private final mProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private final mTarget:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;Landroid/view/View;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/settingslib/net/UidDetailProvider;
    .param p2, "item"    # Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;
    .param p3, "target"    # Landroid/view/View;

    .prologue
    .line 306
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 307
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/net/UidDetailProvider;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 308
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->mItem:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    .line 309
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->mTarget:Landroid/view/View;

    .line 306
    return-void
.end method

.method private static bindView(Lcom/android/settingslib/net/UidDetail;Landroid/view/View;)V
    .locals 4
    .param p0, "detail"    # Lcom/android/settingslib/net/UidDetail;
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 329
    const v2, 0x7f11027a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 330
    .local v0, "icon":Landroid/widget/ImageView;
    const v2, 0x7f11027b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 332
    .local v1, "title":Landroid/widget/TextView;
    if-eqz p0, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v2, p0, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v2, p0, Lcom/android/settingslib/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 328
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static bindView(Lcom/android/settingslib/net/UidDetailProvider;Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;Landroid/view/View;)V
    .locals 5
    .param p0, "provider"    # Lcom/android/settingslib/net/UidDetailProvider;
    .param p1, "item"    # Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 314
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;

    .line 315
    .local v1, "existing":Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;
    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->cancel(Z)Z

    .line 319
    :cond_0
    iget v2, p1, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->key:I

    invoke-virtual {p0, v2, v4}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    .line 320
    .local v0, "cachedDetail":Lcom/android/settingslib/net/UidDetail;
    if-eqz v0, :cond_1

    .line 321
    invoke-static {v0, p2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/view/View;)V

    .line 313
    :goto_0
    return-void

    .line 323
    :cond_1
    new-instance v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;-><init>(Lcom/android/settingslib/net/UidDetailProvider;Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;Landroid/view/View;)V

    .line 324
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 323
    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/net/UidDetail;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->mItem:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    iget v1, v1, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->key:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 348
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/settingslib/net/UidDetail;)V
    .locals 1
    .param p1, "result"    # Lcom/android/settingslib/net/UidDetail;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->mTarget:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/view/View;)V

    .line 353
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 353
    check-cast p1, Lcom/android/settingslib/net/UidDetail;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->onPostExecute(Lcom/android/settingslib/net/UidDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->mTarget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetail;Landroid/view/View;)V

    .line 343
    return-void
.end method
