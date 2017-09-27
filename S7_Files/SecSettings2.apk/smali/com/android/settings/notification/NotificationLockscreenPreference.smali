.class public Lcom/android/settings/notification/NotificationLockscreenPreference;
.super Lcom/samsung/android/settings/RestrictedListPreference;
.source "NotificationLockscreenPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAllowRemoteInput:Z

.field private mRemoteInputCheckBoxEnabled:Z

.field private mShowRemoteInput:Z

.field private mUserId:I

.field private mViews:Landroid/view/ViewGroup;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/NotificationLockscreenPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/NotificationLockscreenPreference;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mViews:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/NotificationLockscreenPreference;)Landroid/widget/ListView;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/NotificationLockscreenPreference;IZ)I
    .locals 1
    .param p1, "selected"    # I
    .param p2, "showRemoteAtAll"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationLockscreenPreference;->checkboxVisibilityForSelectedIndex(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/notification/NotificationLockscreenPreference;I)V
    .locals 0
    .param p1, "which"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setClickedDialogEntryIndex(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mRemoteInputCheckBoxEnabled:Z

    .line 53
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mUserId:I

    .line 57
    return-void
.end method

.method private checkboxVisibilityForSelectedIndex(IZ)I
    .locals 1
    .param p1, "selected"    # I
    .param p2, "showRemoteAtAll"    # Z

    .prologue
    .line 182
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mRemoteInputCheckBoxEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 183
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 4

    .prologue
    .line 136
    new-instance v0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;-><init>(Lcom/samsung/android/settings/RestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/android/settings/notification/NotificationLockscreenPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationLockscreenPreference$1;-><init>(Lcom/android/settings/notification/NotificationLockscreenPreference;)V

    .line 177
    .local v0, "listItemListener":Landroid/widget/AdapterView$OnItemClickListener;
    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 90
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    .line 89
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-super {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->onClick()V

    .line 70
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f1100f1

    if-ne v1, v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 83
    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 80
    :cond_0
    return-void
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/samsung/android/settings/RestrictedListPreference;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 108
    .local v2, "dialog":Landroid/view/View;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 109
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040170

    invoke-virtual {v3, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 111
    .local v1, "customView":Landroid/widget/LinearLayout;
    const v5, 0x7f110461

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 112
    .local v0, "checkbox":Landroid/widget/CheckBox;
    iget-boolean v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    iget-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v5, :cond_2

    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 116
    const v5, 0x7f110462

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 117
    .local v4, "restricted":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v5, :cond_3

    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v5, :cond_0

    .line 120
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 121
    const v5, 0x7f1100f1

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mViews:Landroid/view/ViewGroup;

    .line 122
    iget-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mViews:Landroid/view/ViewGroup;

    .line 123
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 122
    invoke-virtual {v5, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mViews:Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 126
    iget-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mViews:Landroid/view/ViewGroup;

    invoke-virtual {v5, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v5, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mViews:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationLockscreenPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    .line 128
    iget-boolean v7, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    .line 127
    invoke-direct {p0, v6, v7}, Lcom/android/settings/notification/NotificationLockscreenPreference;->checkboxVisibilityForSelectedIndex(IZ)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 131
    :cond_0
    return-object v2

    .end local v4    # "restricted":Landroid/view/View;
    :cond_1
    move v5, v7

    .line 112
    goto :goto_0

    :cond_2
    move v7, v6

    .line 114
    goto :goto_1

    .restart local v4    # "restricted":Landroid/view/View;
    :cond_3
    move v5, v6

    .line 117
    goto :goto_2
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-super {p0, p1}, Lcom/samsung/android/settings/RestrictedListPreference;->onDialogClosed(Z)V

    .line 149
    iget v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mClickedDialogEntryIndex:I

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mClickedDialogEntryIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setValue(Ljava/lang/String;)V

    .line 155
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 156
    const-string/jumbo v3, "lock_screen_allow_remote_input"

    iget-boolean v4, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 155
    :cond_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/samsung/android/settings/RestrictedListPreference;->onDismiss(Landroid/content/DialogInterface;)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mDialog:Landroid/app/Dialog;

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->onDialogClosed(Z)V

    .line 140
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    const-string/jumbo v3, "lock_screen_allow_remote_input"

    .line 100
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    .line 98
    return-void

    :cond_0
    move v0, v2

    .line 99
    goto :goto_0

    :cond_1
    move v1, v2

    .line 100
    goto :goto_1
.end method

.method public setRemoteInputCheckBoxEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mRemoteInputCheckBoxEnabled:Z

    .line 61
    return-void
.end method

.method public setRemoteInputRestricted(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 65
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mUserId:I

    .line 93
    return-void
.end method
