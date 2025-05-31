.class public Lde/fgerbig/spacepeng/events/EventManagerImpl;
.super Ljava/lang/Object;
.source "EventManagerImpl.java"

# interfaces
.implements Lde/fgerbig/spacepeng/events/EventManager;


# instance fields
.field private final eventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/fgerbig/spacepeng/utils/RandomAccessSet",
            "<",
            "Lde/fgerbig/spacepeng/events/EventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final eventManager:Lde/fgerbig/spacepeng/events/InternalEventManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/events/EventManagerImpl;->eventListeners:Ljava/util/Map;

    .line 29
    new-instance v0, Lde/fgerbig/spacepeng/events/InternalEventManager;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/events/InternalEventManager;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/events/EventManagerImpl;->eventManager:Lde/fgerbig/spacepeng/events/InternalEventManager;

    return-void
.end method

.method private getListenersForEvent(Ljava/lang/String;)Lde/fgerbig/spacepeng/utils/RandomAccessSet;
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lde/fgerbig/spacepeng/utils/RandomAccessSet",
            "<",
            "Lde/fgerbig/spacepeng/events/EventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lde/fgerbig/spacepeng/events/EventManagerImpl;->eventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lde/fgerbig/spacepeng/events/EventManagerImpl;->eventListeners:Ljava/util/Map;

    new-instance v1, Lde/fgerbig/spacepeng/utils/RandomAccessSet;

    invoke-direct {v1}, Lde/fgerbig/spacepeng/utils/RandomAccessSet;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    iget-object v0, p0, Lde/fgerbig/spacepeng/events/EventManagerImpl;->eventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/utils/RandomAccessSet;

    return-object v0
.end method


# virtual methods
.method public process()V
    .locals 3

    .prologue
    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lde/fgerbig/spacepeng/events/EventManagerImpl;->eventManager:Lde/fgerbig/spacepeng/events/InternalEventManager;

    invoke-virtual {v2}, Lde/fgerbig/spacepeng/events/InternalEventManager;->getEventCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 72
    iget-object v2, p0, Lde/fgerbig/spacepeng/events/EventManagerImpl;->eventManager:Lde/fgerbig/spacepeng/events/InternalEventManager;

    invoke-virtual {v2, v1}, Lde/fgerbig/spacepeng/events/InternalEventManager;->getEvent(I)Lde/fgerbig/spacepeng/events/Event;

    move-result-object v0

    .line 73
    .local v0, "event":Lde/fgerbig/spacepeng/events/Event;
    invoke-virtual {p0, v0}, Lde/fgerbig/spacepeng/events/EventManagerImpl;->process(Lde/fgerbig/spacepeng/events/Event;)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "event":Lde/fgerbig/spacepeng/events/Event;
    :cond_0
    iget-object v2, p0, Lde/fgerbig/spacepeng/events/EventManagerImpl;->eventManager:Lde/fgerbig/spacepeng/events/InternalEventManager;

    invoke-virtual {v2}, Lde/fgerbig/spacepeng/events/InternalEventManager;->clear()V

    .line 76
    return-void
.end method

.method public process(Lde/fgerbig/spacepeng/events/Event;)V
    .locals 4
    .param p1, "event"    # Lde/fgerbig/spacepeng/events/Event;

    .prologue
    .line 62
    iget-object v2, p0, Lde/fgerbig/spacepeng/events/EventManagerImpl;->eventListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/events/Event;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/fgerbig/spacepeng/utils/RandomAccessSet;

    .line 63
    .local v1, "listeners":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<Lde/fgerbig/spacepeng/events/EventListener;>;"
    if-nez v1, :cond_1

    .line 67
    :cond_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 66
    invoke-virtual {v1, v0}, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/fgerbig/spacepeng/events/EventListener;

    invoke-virtual {v2, p1}, Lde/fgerbig/spacepeng/events/EventListener;->onEvent(Lde/fgerbig/spacepeng/events/Event;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Lde/fgerbig/spacepeng/events/EventListener;)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "listener"    # Lde/fgerbig/spacepeng/events/EventListener;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lde/fgerbig/spacepeng/events/EventManagerImpl;->getListenersForEvent(Ljava/lang/String;)Lde/fgerbig/spacepeng/utils/RandomAccessSet;

    move-result-object v0

    .line 34
    .local v0, "listeners":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<Lde/fgerbig/spacepeng/events/EventListener;>;"
    invoke-virtual {v0, p2}, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public submit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 80
    iget-object v0, p0, Lde/fgerbig/spacepeng/events/EventManagerImpl;->eventManager:Lde/fgerbig/spacepeng/events/InternalEventManager;

    invoke-virtual {v0, p1, p2}, Lde/fgerbig/spacepeng/events/InternalEventManager;->registerEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public unregister(Lde/fgerbig/spacepeng/events/EventListener;)V
    .locals 4
    .param p1, "listener"    # Lde/fgerbig/spacepeng/events/EventListener;

    .prologue
    .line 47
    iget-object v3, p0, Lde/fgerbig/spacepeng/events/EventManagerImpl;->eventListeners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 48
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lde/fgerbig/spacepeng/events/EventManagerImpl;->eventListeners:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/fgerbig/spacepeng/utils/RandomAccessSet;

    invoke-virtual {v3, p1}, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public unregister(Ljava/lang/String;Lde/fgerbig/spacepeng/events/EventListener;)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "listener"    # Lde/fgerbig/spacepeng/events/EventListener;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lde/fgerbig/spacepeng/events/EventManagerImpl;->getListenersForEvent(Ljava/lang/String;)Lde/fgerbig/spacepeng/utils/RandomAccessSet;

    move-result-object v0

    .line 40
    .local v0, "listeners":Lde/fgerbig/spacepeng/utils/RandomAccessSet;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet<Lde/fgerbig/spacepeng/events/EventListener;>;"
    invoke-virtual {v0, p2}, Lde/fgerbig/spacepeng/utils/RandomAccessSet;->remove(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method
