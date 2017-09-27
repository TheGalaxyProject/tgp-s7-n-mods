.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarEventListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventListAdapter"
.end annotation


# instance fields
.field mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;>;"
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    .line 132
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return v1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 158
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 163
    if-nez p2, :cond_0

    .line 164
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v3

    if-nez v3, :cond_3

    .line 165
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$layout;->servicebox_today_event_item_small:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 171
    :cond_0
    :goto_0
    sget v3, Lcom/android/keyguard/R$id;->servicebox_today_event_time:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 172
    .local v1, "timeView":Landroid/widget/TextView;
    sget v3, Lcom/android/keyguard/R$id;->servicebox_today_event_title:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 174
    .local v2, "titleView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;

    .line 177
    .local v0, "event":Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;
    if-eqz v0, :cond_2

    .line 178
    if-eqz v1, :cond_1

    .line 179
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v3

    if-nez v3, :cond_4

    .line 180
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 186
    iget-object v3, v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .end local v0    # "event":Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;
    :cond_2
    return-object p2

    .line 166
    .end local v1    # "timeView":Landroid/widget/TextView;
    .end local v2    # "titleView":Landroid/widget/TextView;
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 167
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$layout;->servicebox_today_event_item_big:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 181
    .restart local v0    # "event":Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;
    .restart local v1    # "timeView":Landroid/widget/TextView;
    .restart local v2    # "titleView":Landroid/widget/TextView;
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 182
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
