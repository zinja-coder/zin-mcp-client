.class Lde/fgerbig/spacepeng/events/InternalEventManager;
.super Ljava/lang/Object;
.source "InternalEventManager.java"


# instance fields
.field private eventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/fgerbig/spacepeng/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final eventPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lde/fgerbig/spacepeng/events/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lde/fgerbig/spacepeng/events/InternalEventManager$1;

    const/16 v1, 0x32

    invoke-direct {v0, p0, v1}, Lde/fgerbig/spacepeng/events/InternalEventManager$1;-><init>(Lde/fgerbig/spacepeng/events/InternalEventManager;I)V

    iput-object v0, p0, Lde/fgerbig/spacepeng/events/InternalEventManager;->eventPool:Lcom/badlogic/gdx/utils/Pool;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/events/InternalEventManager;->eventList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/events/InternalEventManager;->getEventCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 44
    iget-object v1, p0, Lde/fgerbig/spacepeng/events/InternalEventManager;->eventPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, p0, Lde/fgerbig/spacepeng/events/InternalEventManager;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Lde/fgerbig/spacepeng/events/InternalEventManager;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 46
    return-void
.end method

.method public getEvent(I)Lde/fgerbig/spacepeng/events/Event;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 53
    if-ltz p1, :cond_0

    iget-object v0, p0, Lde/fgerbig/spacepeng/events/InternalEventManager;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lde/fgerbig/spacepeng/events/InternalEventManager;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/events/Event;

    goto :goto_0
.end method

.method public getEventCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lde/fgerbig/spacepeng/events/InternalEventManager;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public registerEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 36
    iget-object v1, p0, Lde/fgerbig/spacepeng/events/InternalEventManager;->eventPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/events/Event;

    .line 37
    .local v0, "event":Lde/fgerbig/spacepeng/events/Event;
    invoke-virtual {v0, p2}, Lde/fgerbig/spacepeng/events/Event;->setSource(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v0, p1}, Lde/fgerbig/spacepeng/events/Event;->setId(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lde/fgerbig/spacepeng/events/InternalEventManager;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method
