.class final Lcom/android/settings/AppListPreference$SavedState$1;
.super Ljava/lang/Object;
.source "AppListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppListPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/settings/AppListPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/AppListPreference$SavedState;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 366
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    .line 367
    .local v2, "value":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 368
    .local v4, "showItemNone":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference$SavedState$1;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    .line 369
    .local v5, "superState":Landroid/os/Parcelable;
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 370
    .local v3, "summaries":[Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/settings/AppListPreference$SavedState;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AppListPreference$SavedState;-><init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V

    return-object v0

    .line 367
    .end local v3    # "summaries":[Ljava/lang/CharSequence;
    .end local v4    # "showItemNone":Z
    .end local v5    # "superState":Landroid/os/Parcelable;
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "showItemNone":Z
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/AppListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/settings/AppListPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 375
    new-array v0, p1, [Lcom/android/settings/AppListPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference$SavedState$1;->newArray(I)[Lcom/android/settings/AppListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
