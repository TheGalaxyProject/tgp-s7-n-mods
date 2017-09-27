.class public Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageReminderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private final mUm:Landroid/os/UserManager;

.field final synthetic this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;Landroid/os/UserManager;Lcom/android/settingslib/net/UidDetailProvider;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;
    .param p2, "userManager"    # Landroid/os/UserManager;
    .param p3, "provider"    # Lcom/android/settingslib/net/UidDetailProvider;
    .param p4, "insetSide"    # I

    .prologue
    .line 161
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 159
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    .line 162
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/net/UidDetailProvider;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 163
    iput p4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mInsetSide:I

    .line 164
    iput-object p2, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    .line 161
    return-void
.end method

.method private accumulate(ILandroid/util/SparseArray;IJJ)V
    .locals 4
    .param p1, "collapseKey"    # I
    .param p3, "uid"    # I
    .param p4, "mobile"    # J
    .param p6, "wlan"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;",
            ">;IJJ)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;>;"
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    .line 222
    .local v0, "item":Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;
    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    .end local v0    # "item":Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;
    invoke-direct {v0, p1}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;-><init>(I)V

    .line 224
    .restart local v0    # "item":Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget v1, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->key:I

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    :cond_0
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->addUid(I)V

    .line 228
    iget-wide v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    add-long/2addr v2, p4

    iput-wide v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    .line 229
    iget-wide v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    add-long/2addr v2, p6

    iput-wide v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    .line 220
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public bindStats()V
    .locals 24

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 172
    const-string/jumbo v2, "DataUsageReminderActivity_YIN"

    const-string/jumbo v10, "bindStats."

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->-get0(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v23

    .line 174
    .local v23, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v18

    .line 175
    .local v18, "currentUserId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v21

    .line 176
    .local v21, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 177
    .local v4, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->-get2(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_6

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->-get2(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 179
    .local v5, "uid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->-get3(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 180
    .local v8, "wlan":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->-get1(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 181
    .local v6, "mobile":J
    const-string/jumbo v2, "DataUsageReminderActivity_YIN"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "uid = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " wlan = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " mobile = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    .line 184
    .local v22, "userId":I
    invoke-static {v5}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    new-instance v2, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    move/from16 v0, v22

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 188
    invoke-static/range {v22 .. v22}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v3

    .local v3, "managedKey":I
    move-object/from16 v2, p0

    .line 189
    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;IJJ)V

    .line 191
    .end local v3    # "managedKey":I
    :cond_0
    move v11, v5

    .local v11, "collapseKey":I
    :goto_1
    move-object/from16 v10, p0

    move-object v12, v4

    move v13, v5

    move-wide v14, v6

    move-wide/from16 v16, v8

    .line 206
    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;IJJ)V

    .line 177
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 194
    .end local v11    # "collapseKey":I
    :cond_1
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v20

    .line 195
    .local v20, "info":Landroid/content/pm/UserInfo;
    if-nez v20, :cond_2

    .line 196
    const/4 v11, -0x4

    .restart local v11    # "collapseKey":I
    goto :goto_1

    .line 198
    .end local v11    # "collapseKey":I
    :cond_2
    invoke-static/range {v22 .. v22}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v11

    .restart local v11    # "collapseKey":I
    goto :goto_1

    .line 201
    .end local v11    # "collapseKey":I
    .end local v20    # "info":Landroid/content/pm/UserInfo;
    :cond_3
    const/4 v2, -0x4

    if-eq v5, v2, :cond_4

    const/4 v2, -0x5

    if-ne v5, v2, :cond_5

    .line 202
    :cond_4
    move v11, v5

    .line 201
    .restart local v11    # "collapseKey":I
    goto :goto_1

    .end local v11    # "collapseKey":I
    :cond_5
    const/16 v2, -0x64

    if-eq v5, v2, :cond_4

    .line 204
    const/16 v11, 0x3e8

    .restart local v11    # "collapseKey":I
    goto :goto_1

    .line 208
    .end local v5    # "uid":I
    .end local v6    # "mobile":J
    .end local v8    # "wlan":J
    .end local v11    # "collapseKey":I
    .end local v22    # "userId":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->notifyDataSetChanged()V

    .line 170
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    iget v0, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->key:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 269
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    .line 270
    .local v2, "item":Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;
    if-nez p2, :cond_0

    .line 271
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 272
    const v5, 0x7f0400b2

    .line 271
    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 274
    iget v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mInsetSide:I

    if-lez v4, :cond_0

    .line 275
    iget v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mInsetSide:I

    iget v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v4, v6, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 279
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 280
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f11027c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 282
    .local v1, "dataUsage":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-static {v4, v2, p2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetailProvider;Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;Landroid/view/View;)V

    .line 283
    const-string/jumbo v3, ""

    .line 284
    .local v3, "summary":Ljava/lang/String;
    iget-wide v4, v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->-get0(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0c59

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    iget-wide v4, v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    :cond_1
    iget-wide v4, v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->-get0(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0c5a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method
