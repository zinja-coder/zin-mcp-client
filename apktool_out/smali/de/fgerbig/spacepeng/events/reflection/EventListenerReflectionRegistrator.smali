.class public Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;
.super Ljava/lang/Object;
.source "EventListenerReflectionRegistrator.java"


# static fields
.field private static final cachedAnnotationsPerMethod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static final cachedClassMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final cachedMethodsPerClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final eventClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lde/fgerbig/spacepeng/events/Event;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final createdMethodEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final eventManager:Lde/fgerbig/spacepeng/events/EventManager;

.field private final invokeMethodEventListenerPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lde/fgerbig/spacepeng/events/Event;

    sput-object v0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->eventClass:Ljava/lang/Class;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->cachedClassMethods:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->cachedMethodsPerClass:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->cachedAnnotationsPerMethod:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lde/fgerbig/spacepeng/events/EventManager;)V
    .locals 2
    .param p1, "eventManager"    # Lde/fgerbig/spacepeng/events/EventManager;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator$1;

    const/16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator$1;-><init>(Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;I)V

    iput-object v0, p0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->invokeMethodEventListenerPool:Lcom/badlogic/gdx/utils/Pool;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->createdMethodEventListeners:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    .line 59
    return-void
.end method

.method private getAnnotations(Ljava/lang/reflect/Method;)[Ljava/lang/annotation/Annotation;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 182
    sget-object v0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->cachedAnnotationsPerMethod:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->cachedAnnotationsPerMethod:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    sget-object v0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->cachedAnnotationsPerMethod:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method private static getCachedClassMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->cachedClassMethods:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    sget-object v0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->cachedClassMethods:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_0
    sget-object v0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->cachedClassMethods:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private getCachedMethodEventListenersForObject(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->createdMethodEventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->createdMethodEventListeners:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    iget-object v0, p0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->createdMethodEventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private getClassCachedMethods(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->cachedMethodsPerClass:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->cachedMethodsPerClass:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    sget-object v0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->cachedMethodsPerClass:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private getHandlesAnnotation(Ljava/lang/reflect/Method;)Lde/fgerbig/spacepeng/events/reflection/Handles;
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->getAnnotations(Ljava/lang/reflect/Method;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 174
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 175
    aget-object v2, v0, v1

    instance-of v2, v2, Lde/fgerbig/spacepeng/events/reflection/Handles;

    if-eqz v2, :cond_0

    .line 176
    aget-object v2, v0, v1

    check-cast v2, Lde/fgerbig/spacepeng/events/reflection/Handles;

    .line 178
    :goto_1
    return-object v2

    .line 174
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->getClassCachedMethods(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 69
    .local v0, "cachedMethods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 80
    :goto_0
    return-object v3

    .line 72
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->eventClass:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {p2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 73
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v2

    .line 74
    goto :goto_0

    .line 75
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "SpacePeng"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 77
    :catch_1
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "SpacePeng"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get method"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private registerEventListenerForMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 3
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 94
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 96
    iget-object v2, p0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->invokeMethodEventListenerPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;

    .line 97
    .local v1, "invokeMethodEventListener":Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;
    invoke-virtual {v1, p2}, Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;->setOwner(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v1, p3}, Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;->setMethod(Ljava/lang/reflect/Method;)V

    .line 100
    iget-object v2, p0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    invoke-interface {v2, p1, v1}, Lde/fgerbig/spacepeng/events/EventManager;->register(Ljava/lang/String;Lde/fgerbig/spacepeng/events/EventListener;)V

    .line 103
    invoke-direct {p0, p2}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->getCachedMethodEventListenersForObject(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 104
    .local v0, "cachedMethodEventListeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;>;"
    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method private unregisterEventListenerForMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 3
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 114
    invoke-direct {p0, p2}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->getCachedMethodEventListenersForObject(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 115
    .local v0, "cachedMethodEventListeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;>;"
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;

    .line 116
    .local v1, "invokeMethodEventListener":Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;
    iget-object v2, p0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    invoke-interface {v2, p1, v1}, Lde/fgerbig/spacepeng/events/EventManager;->unregister(Ljava/lang/String;Lde/fgerbig/spacepeng/events/EventListener;)V

    .line 117
    iget-object v2, p0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->invokeMethodEventListenerPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 118
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method


# virtual methods
.method public registerEventListener(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->getMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 86
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 87
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "SpacePeng"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register EventListener for event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->registerEventListenerForMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    goto :goto_0
.end method

.method public registerEventListeners(Ljava/lang/Object;)V
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 128
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->getCachedClassMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 129
    .local v7, "methods":[Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_3

    .line 130
    aget-object v6, v7, v4

    .line 131
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v6}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->getHandlesAnnotation(Ljava/lang/reflect/Method;)Lde/fgerbig/spacepeng/events/reflection/Handles;

    move-result-object v3

    .line 132
    .local v3, "handlesAnnotation":Lde/fgerbig/spacepeng/events/reflection/Handles;
    if-nez v3, :cond_1

    .line 129
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    :cond_1
    invoke-interface {v3}, Lde/fgerbig/spacepeng/events/reflection/Handles;->ids()[Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "eventIds":[Ljava/lang/String;
    array-length v8, v2

    if-nez v8, :cond_2

    .line 136
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p1, v6}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->registerEventListenerForMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    goto :goto_1

    .line 139
    :cond_2
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v8, v2

    if-ge v5, v8, :cond_0

    .line 140
    aget-object v1, v2, v5

    .line 141
    .local v1, "eventId":Ljava/lang/String;
    invoke-direct {p0, v1, p1, v6}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->registerEventListenerForMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 144
    .end local v1    # "eventId":Ljava/lang/String;
    .end local v2    # "eventIds":[Ljava/lang/String;
    .end local v3    # "handlesAnnotation":Lde/fgerbig/spacepeng/events/reflection/Handles;
    .end local v5    # "j":I
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_3
    return-void
.end method

.method public unregisterEventListeners(Ljava/lang/Object;)V
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 153
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->getCachedClassMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 154
    .local v7, "methods":[Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_3

    .line 155
    aget-object v6, v7, v4

    .line 156
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v6}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->getHandlesAnnotation(Ljava/lang/reflect/Method;)Lde/fgerbig/spacepeng/events/reflection/Handles;

    move-result-object v3

    .line 157
    .local v3, "handlesAnnotation":Lde/fgerbig/spacepeng/events/reflection/Handles;
    if-nez v3, :cond_1

    .line 154
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-interface {v3}, Lde/fgerbig/spacepeng/events/reflection/Handles;->ids()[Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "eventIds":[Ljava/lang/String;
    array-length v8, v2

    if-nez v8, :cond_2

    .line 161
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p1, v6}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->unregisterEventListenerForMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    goto :goto_1

    .line 164
    :cond_2
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v8, v2

    if-ge v5, v8, :cond_0

    .line 165
    aget-object v1, v2, v5

    .line 166
    .local v1, "eventId":Ljava/lang/String;
    invoke-direct {p0, v1, p1, v6}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->unregisterEventListenerForMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 164
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 169
    .end local v1    # "eventId":Ljava/lang/String;
    .end local v2    # "eventIds":[Ljava/lang/String;
    .end local v3    # "handlesAnnotation":Lde/fgerbig/spacepeng/events/reflection/Handles;
    .end local v5    # "j":I
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_3
    iget-object v8, p0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;->createdMethodEventListeners:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method
