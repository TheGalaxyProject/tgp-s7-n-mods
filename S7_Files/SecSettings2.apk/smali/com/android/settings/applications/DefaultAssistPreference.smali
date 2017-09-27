.class public Lcom/android/settings/applications/DefaultAssistPreference;
.super Lcom/android/settings/AppListPreferenceWithSettings;
.source "DefaultAssistPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/DefaultAssistPreference$Info;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mAvailableAssistants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/DefaultAssistPreference$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/DefaultAssistPreference;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreferenceWithSettings;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mContext:Landroid/content/Context;

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setShowItemNone(Z)V

    .line 57
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    iget-object v1, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 59
    const v0, 0x7f0b03ad

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setResDescription(I)V

    .line 52
    return-void
.end method

.method private addAssistActivities()V
    .locals 9

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 183
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.ASSIST"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    const/high16 v5, 0x10000

    .line 182
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 186
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 187
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    new-instance v5, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    .line 188
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 189
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 188
    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-direct {v5, v6}, Lcom/android/settings/applications/DefaultAssistPreference$Info;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private addAssistServices()V
    .locals 10

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 162
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.service.voice.VoiceInteractionService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    const/16 v6, 0x80

    .line 161
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 164
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 165
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 167
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v4, v1, v5}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 168
    .local v4, "voiceInteractionServiceInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v5

    if-nez v5, :cond_0

    .line 164
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    new-instance v6, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    .line 173
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 174
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 173
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {v6, v7, v4}, Lcom/android/settings/applications/DefaultAssistPreference$Info;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "voiceInteractionServiceInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_1
    return-void
.end method

.method private findAssistantByPackageName(Ljava/lang/String;)Lcom/android/settings/applications/DefaultAssistPreference$Info;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    .line 151
    .local v1, "info":Lcom/android/settings/applications/DefaultAssistPreference$Info;
    iget-object v2, v1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    return-object v1

    .line 149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "info":Lcom/android/settings/applications/DefaultAssistPreference$Info;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getDefaultRecognizer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 137
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    const/16 v3, 0x80

    .line 136
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 139
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    .line 140
    :cond_0
    sget-object v1, Lcom/android/settings/applications/DefaultAssistPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to resolve default voice recognition service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string/jumbo v1, ""

    return-object v1

    .line 144
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 145
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 144
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setAssistActivity(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V
    .locals 3
    .param p1, "activityInfo"    # Lcom/android/settings/applications/DefaultAssistPreference$Info;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    const-string/jumbo v1, "assistant"

    iget-object v2, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    const-string/jumbo v1, "voice_interaction_service"

    const-string/jumbo v2, ""

    .line 126
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "voice_recognition_service"

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    .line 123
    return-void
.end method

.method private setAssistNone()V
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "assistant"

    const-string/jumbo v2, ""

    .line 90
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    const-string/jumbo v1, "voice_interaction_service"

    const-string/jumbo v2, ""

    .line 92
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    const-string/jumbo v1, "voice_recognition_service"

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b1a37

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    .line 89
    return-void
.end method

.method private setAssistService(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V
    .locals 7
    .param p1, "serviceInfo"    # Lcom/android/settings/applications/DefaultAssistPreference$Info;

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v4, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "serviceComponentName":Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    .line 104
    iget-object v5, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 105
    iget-object v6, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "serviceRecognizerName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 109
    const-string/jumbo v5, "assistant"

    .line 108
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 111
    const-string/jumbo v5, "voice_interaction_service"

    .line 110
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 113
    const-string/jumbo v5, "voice_recognition_service"

    .line 112
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/DefaultAssistPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v4, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "settingsActivity":Ljava/lang/String;
    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/DefaultAssistPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    .line 101
    return-void

    .line 120
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentAssist()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected loggingSettingsIcon()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mContext:Landroid/content/Context;

    .line 86
    iget-object v1, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 85
    const/16 v2, 0xc9

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 84
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->findAssistantByPackageName(Ljava/lang/String;)Lcom/android/settings/applications/DefaultAssistPreference$Info;

    move-result-object v0

    .line 66
    .local v0, "info":Lcom/android/settings/applications/DefaultAssistPreference$Info;
    if-nez v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->setAssistNone()V

    .line 68
    return v4

    .line 71
    :cond_0
    sget-boolean v1, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "DAAU"

    invoke-static {v1, v2, v3, p1}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultAssistPreference$Info;->isVoiceInteractionService()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-direct {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setAssistService(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V

    .line 80
    :goto_0
    return v4

    .line 78
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setAssistActivity(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V

    goto :goto_0
.end method

.method public refreshAssistApps()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 198
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 199
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->addAssistServices()V

    .line 200
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->addAssistActivities()V

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 204
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    iget-object v4, v4, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    .line 213
    .local v0, "currentAssist":Landroid/content/ComponentName;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    .line 214
    if-nez v0, :cond_2

    .line 213
    :goto_2
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/applications/DefaultAssistPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 197
    return-void

    .line 214
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method
