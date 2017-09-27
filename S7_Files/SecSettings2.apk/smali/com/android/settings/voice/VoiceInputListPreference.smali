.class public Lcom/android/settings/voice/VoiceInputListPreference;
.super Lcom/android/settings/AppListPreferenceWithSettings;
.source "VoiceInputListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;
    }
.end annotation


# instance fields
.field private mAssistRestrict:Landroid/content/ComponentName;

.field private final mAvailableIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHelper:Lcom/android/settings/voice/VoiceInputHelper;


# direct methods
.method static synthetic -get0(Lcom/android/settings/voice/VoiceInputListPreference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreferenceWithSettings;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    .line 38
    const v0, 0x7f0b1a3d

    invoke-virtual {p0, v0}, Lcom/android/settings/voice/VoiceInputListPreference;->setDialogTitle(I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 5

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "selectedValue":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/voice/VoiceInputListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 46
    .local v0, "selectedIndex":I
    new-instance v2, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;-><init>(Lcom/android/settings/voice/VoiceInputListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V

    return-object v2
.end method

.method public getCurrentService()Landroid/content/ComponentName;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 140
    const-string/jumbo v0, "VoiceInputListPreference"

    const-string/jumbo v1, "getCurrentService=mCurrentVoiceInteraction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 143
    const-string/jumbo v0, "VoiceInputListPreference"

    const-string/jumbo v1, "getCurrentService=mCurrentRecognizer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    return-object v0

    .line 146
    :cond_1
    const-string/jumbo v0, "VoiceInputListPreference"

    const-string/jumbo v1, "getCurrentService=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v2
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v3, v3, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v3, v3, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;

    .line 53
    .local v1, "info":Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;
    iget-object v3, v1, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 55
    const-string/jumbo v4, "voice_interaction_service"

    .line 54
    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 57
    const-string/jumbo v4, "voice_recognition_service"

    .line 58
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v1, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->service:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 59
    iget-object v7, v1, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->serviceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v7}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/voice/VoiceInputListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v3, v1, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->settings:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/settings/voice/VoiceInputListPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    .line 63
    return v8

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "info":Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v3, v3, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 68
    iget-object v3, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v3, v3, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;

    .line 69
    .local v2, "info":Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;
    iget-object v3, v2, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 71
    const-string/jumbo v4, "voice_interaction_service"

    const-string/jumbo v5, ""

    .line 70
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 73
    const-string/jumbo v4, "voice_recognition_service"

    .line 72
    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/voice/VoiceInputListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v3, v2, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;->settings:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/settings/voice/VoiceInputListPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    .line 76
    return v8

    .line 67
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v2    # "info":Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/voice/VoiceInputListPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    .line 81
    return v8
.end method

.method public refreshVoiceInputs()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 94
    new-instance v8, Lcom/android/settings/voice/VoiceInputHelper;

    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/settings/voice/VoiceInputHelper;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    .line 95
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    invoke-virtual {v8}, Lcom/android/settings/voice/VoiceInputHelper;->buildUi()V

    .line 98
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAssistRestrict:Landroid/content/ComponentName;

    if-nez v8, :cond_1

    const-string/jumbo v0, ""

    .line 100
    .local v0, "assistKey":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 104
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;

    .line 105
    .local v4, "info":Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;
    iget-object v8, v4, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->appLabel:Ljava/lang/CharSequence;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v8, v4, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v8, v4, Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 109
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "assistKey":Ljava/lang/String;
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v3    # "i":I
    .end local v4    # "info":Lcom/android/settings/voice/VoiceInputHelper$InteractionInfo;
    .end local v7    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAssistRestrict:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "assistKey":Ljava/lang/String;
    goto :goto_0

    .line 113
    .restart local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v3    # "i":I
    .restart local v7    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v1, 0x0

    .line 114
    .local v1, "assitIsService":Z
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 116
    .local v6, "serviceCount":I
    const/4 v3, 0x0

    :goto_3
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 117
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/settings/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;

    .line 118
    .local v5, "info":Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;
    iget-object v8, v5, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v8, v5, Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;->key:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    if-nez v1, :cond_3

    .line 121
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    add-int v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 113
    .end local v1    # "assitIsService":Z
    .end local v5    # "info":Lcom/android/settings/voice/VoiceInputHelper$RecognizerInfo;
    .end local v6    # "serviceCount":I
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "assitIsService":Z
    goto :goto_2

    .line 124
    .restart local v6    # "serviceCount":I
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-interface {v2, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v8}, Lcom/android/settings/voice/VoiceInputListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 125
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v8}, Lcom/android/settings/voice/VoiceInputListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 127
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    if-eqz v8, :cond_6

    .line 128
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    .line 135
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    return v8

    .line 129
    :cond_6
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    if-eqz v8, :cond_7

    .line 130
    iget-object v8, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings/voice/VoiceInputHelper;

    iget-object v8, v8, Lcom/android/settings/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 132
    :cond_7
    invoke-virtual {p0, v10}, Lcom/android/settings/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setAssistRestrict(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "assistRestrict"    # Landroid/content/ComponentName;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/voice/VoiceInputListPreference;->mAssistRestrict:Landroid/content/ComponentName;

    .line 89
    return-void
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/CharSequence;
    .param p2, "defaultPackageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    return-void
.end method
