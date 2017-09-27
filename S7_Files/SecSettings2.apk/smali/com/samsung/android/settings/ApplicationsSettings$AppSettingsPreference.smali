.class public Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;
.super Landroid/preference/Preference;
.source "ApplicationsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ApplicationsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppSettingsPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ApplicationsSettings;

.field public userHandle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/ApplicationsSettings;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/ApplicationsSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->this$0:Lcom/samsung/android/settings/ApplicationsSettings;

    .line 203
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->userHandle:Ljava/util/ArrayList;

    .line 204
    const v0, 0x7f0402f0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->setLayoutResource(I)V

    .line 205
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 206
    invoke-virtual {p0, p4}, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->init(Landroid/content/Context;)V

    .line 202
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    new-instance v0, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference$1;-><init>(Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 210
    return-void
.end method
