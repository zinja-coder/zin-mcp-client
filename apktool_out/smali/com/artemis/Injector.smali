.class final Lcom/artemis/Injector;
.super Ljava/lang/Object;
.source "Injector.java"


# instance fields
.field private final managers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final pojos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final systems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final world:Lcom/artemis/World;


# direct methods
.method constructor <init>(Lcom/artemis/World;Lcom/artemis/WorldConfiguration;)V
    .locals 2
    .param p1, "world"    # Lcom/artemis/World;
    .param p2, "config"    # Lcom/artemis/WorldConfiguration;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/artemis/Injector;->world:Lcom/artemis/World;

    .line 27
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/artemis/Injector;->systems:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/artemis/Injector;->managers:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p2, Lcom/artemis/WorldConfiguration;->injectables:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/artemis/Injector;->pojos:Ljava/util/Map;

    .line 30
    return-void
.end method

.method private injectAnnotatedFields(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/artemis/Injector;->injectClass(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 86
    return-void
.end method

.method private injectClass(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcom/artemis/utils/reflect/ClassReflection;->getDeclaredFields(Ljava/lang/Class;)[Lcom/artemis/utils/reflect/Field;

    move-result-object v0

    .line 91
    .local v0, "declaredFields":[Lcom/artemis/utils/reflect/Field;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .local v3, "s":I
    :goto_0
    if-le v3, v2, :cond_2

    .line 92
    aget-object v1, v0, v2

    .line 93
    .local v1, "field":Lcom/artemis/utils/reflect/Field;
    const-class v4, Lcom/artemis/annotations/Mapper;

    invoke-virtual {v1, v4}, Lcom/artemis/utils/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/artemis/annotations/Wire;

    invoke-virtual {v1, v4}, Lcom/artemis/utils/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    :cond_0
    const-class v4, Lcom/artemis/annotations/Wire;

    invoke-virtual {v1, v4}, Lcom/artemis/utils/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    invoke-direct {p0, p1, v1, v4}, Lcom/artemis/Injector;->injectField(Ljava/lang/Object;Lcom/artemis/utils/reflect/Field;Z)V

    .line 91
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "field":Lcom/artemis/utils/reflect/Field;
    :cond_2
    return-void
.end method

.method private injectField(Ljava/lang/Object;Lcom/artemis/utils/reflect/Field;Z)V
    .locals 10
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "field"    # Lcom/artemis/utils/reflect/Field;
    .param p3, "failOnNotInjected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Lcom/artemis/utils/reflect/Field;->setAccessible(Z)V

    .line 107
    :try_start_0
    invoke-virtual {p2}, Lcom/artemis/utils/reflect/Field;->getType()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    .local v1, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Lcom/artemis/ComponentMapper;

    invoke-static {v8, v1}, Lcom/artemis/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 115
    iget-object v8, p0, Lcom/artemis/Injector;->world:Lcom/artemis/World;

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Lcom/artemis/utils/reflect/Field;->getElementType(I)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/artemis/World;->getMapper(Ljava/lang/Class;)Lcom/artemis/ComponentMapper;

    move-result-object v5

    .line 116
    .local v5, "mapper":Lcom/artemis/ComponentMapper;, "Lcom/artemis/ComponentMapper<*>;"
    if-eqz p3, :cond_1

    if-nez v5, :cond_1

    .line 117
    const-string v8, "ComponentMapper"

    invoke-direct {p0, v8, p2}, Lcom/artemis/Injector;->onFailedInjection(Ljava/lang/String;Lcom/artemis/utils/reflect/Field;)Lcom/artemis/MundaneWireException;

    move-result-object v8

    throw v8

    .line 108
    .end local v1    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "mapper":Lcom/artemis/ComponentMapper;, "Lcom/artemis/ComponentMapper<*>;"
    :catch_0
    move-exception v2

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 119
    .restart local v1    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "mapper":Lcom/artemis/ComponentMapper;, "Lcom/artemis/ComponentMapper<*>;"
    :cond_1
    invoke-virtual {p2, p1, v5}, Lcom/artemis/utils/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    .end local v5    # "mapper":Lcom/artemis/ComponentMapper;, "Lcom/artemis/ComponentMapper<*>;"
    :cond_2
    const-class v8, Lcom/artemis/EntitySystem;

    invoke-static {v8, v1}, Lcom/artemis/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 121
    iget-object v9, p0, Lcom/artemis/Injector;->world:Lcom/artemis/World;

    iget-object v8, p0, Lcom/artemis/Injector;->systems:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v9, v8}, Lcom/artemis/World;->getSystem(Ljava/lang/Class;)Lcom/artemis/EntitySystem;

    move-result-object v6

    .line 122
    .local v6, "system":Lcom/artemis/EntitySystem;
    if-eqz p3, :cond_3

    if-nez v6, :cond_3

    .line 123
    const-string v8, "EntitySystem"

    invoke-direct {p0, v8, p2}, Lcom/artemis/Injector;->onFailedInjection(Ljava/lang/String;Lcom/artemis/utils/reflect/Field;)Lcom/artemis/MundaneWireException;

    move-result-object v8

    throw v8

    .line 125
    :cond_3
    invoke-virtual {p2, p1, v6}, Lcom/artemis/utils/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    .end local v6    # "system":Lcom/artemis/EntitySystem;
    :cond_4
    const-class v8, Lcom/artemis/Manager;

    invoke-static {v8, v1}, Lcom/artemis/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 127
    iget-object v9, p0, Lcom/artemis/Injector;->world:Lcom/artemis/World;

    iget-object v8, p0, Lcom/artemis/Injector;->managers:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v9, v8}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v4

    .line 128
    .local v4, "manager":Lcom/artemis/Manager;
    if-eqz p3, :cond_5

    if-nez v4, :cond_5

    .line 129
    const-string v8, "Manager"

    invoke-direct {p0, v8, p2}, Lcom/artemis/Injector;->onFailedInjection(Ljava/lang/String;Lcom/artemis/utils/reflect/Field;)Lcom/artemis/MundaneWireException;

    move-result-object v8

    throw v8

    .line 131
    :cond_5
    invoke-virtual {p2, p1, v4}, Lcom/artemis/utils/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    .end local v4    # "manager":Lcom/artemis/Manager;
    :cond_6
    const-class v8, Lcom/artemis/EntityFactory;

    invoke-static {v8, v1}, Lcom/artemis/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 133
    iget-object v8, p0, Lcom/artemis/Injector;->world:Lcom/artemis/World;

    invoke-virtual {v8, v1}, Lcom/artemis/World;->createFactory(Ljava/lang/Class;)Lcom/artemis/EntityFactory;

    move-result-object v0

    .line 134
    .local v0, "factory":Lcom/artemis/EntityFactory;, "Lcom/artemis/EntityFactory<*>;"
    if-eqz p3, :cond_7

    if-nez v0, :cond_7

    .line 135
    const-string v8, "EntityFactory"

    invoke-direct {p0, v8, p2}, Lcom/artemis/Injector;->onFailedInjection(Ljava/lang/String;Lcom/artemis/utils/reflect/Field;)Lcom/artemis/MundaneWireException;

    move-result-object v8

    throw v8

    .line 137
    :cond_7
    invoke-virtual {p2, p1, v0}, Lcom/artemis/utils/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    .end local v0    # "factory":Lcom/artemis/EntityFactory;, "Lcom/artemis/EntityFactory<*>;"
    :cond_8
    const-class v8, Lcom/artemis/annotations/Wire;

    invoke-virtual {p2, v8}, Lcom/artemis/utils/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 139
    const-class v8, Lcom/artemis/annotations/Wire;

    invoke-virtual {p2, v8}, Lcom/artemis/utils/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/artemis/annotations/Wire;

    .line 140
    .local v7, "wire":Lcom/artemis/annotations/Wire;
    invoke-interface {v7}, Lcom/artemis/annotations/Wire;->name()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "key":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 142
    invoke-virtual {p2}, Lcom/artemis/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 144
    :cond_9
    iget-object v8, p0, Lcom/artemis/Injector;->pojos:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 145
    iget-object v8, p0, Lcom/artemis/Injector;->pojos:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2, p1, v8}, Lcom/artemis/utils/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private injectValidFields(Ljava/lang/Object;Ljava/lang/Class;ZZ)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p3, "failOnNull"    # Z
    .param p4, "injectInherited"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcom/artemis/utils/reflect/ClassReflection;->getDeclaredFields(Ljava/lang/Class;)[Lcom/artemis/utils/reflect/Field;

    move-result-object v0

    .line 72
    .local v0, "declaredFields":[Lcom/artemis/utils/reflect/Field;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "s":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 73
    aget-object v3, v0, v1

    invoke-direct {p0, p1, v3, p3}, Lcom/artemis/Injector;->injectField(Ljava/lang/Object;Lcom/artemis/utils/reflect/Field;Z)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    :goto_1
    if-eqz p4, :cond_1

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    const-class v3, Ljava/lang/Object;

    if-eq p2, v3, :cond_1

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/artemis/Injector;->injectValidFields(Ljava/lang/Object;Ljava/lang/Class;ZZ)V

    goto :goto_1

    .line 80
    :cond_1
    return-void
.end method

.method private onFailedInjection(Ljava/lang/String;Lcom/artemis/utils/reflect/Field;)Lcom/artemis/MundaneWireException;
    .locals 3
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "failedInjection"    # Lcom/artemis/utils/reflect/Field;

    .prologue
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to inject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/artemis/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/artemis/utils/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not registered with world."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "error":Ljava/lang/String;
    new-instance v1, Lcom/artemis/MundaneWireException;

    invoke-direct {v1, v0}, Lcom/artemis/MundaneWireException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public inject(Ljava/lang/Object;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lcom/artemis/annotations/Wire;

    invoke-static {v0, v3}, Lcom/artemis/utils/reflect/ClassReflection;->isAnnotationPresent(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    const-class v3, Lcom/artemis/annotations/Wire;

    invoke-static {v0, v3}, Lcom/artemis/utils/reflect/ClassReflection;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/artemis/annotations/Wire;

    .line 57
    .local v2, "wire":Lcom/artemis/annotations/Wire;
    if-eqz v2, :cond_0

    .line 58
    invoke-interface {v2}, Lcom/artemis/annotations/Wire;->failOnNull()Z

    move-result v3

    invoke-interface {v2}, Lcom/artemis/annotations/Wire;->injectInherited()Z

    move-result v4

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/artemis/Injector;->injectValidFields(Ljava/lang/Object;Ljava/lang/Class;ZZ)V

    .line 66
    .end local v2    # "wire":Lcom/artemis/annotations/Wire;
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/artemis/Injector;->injectAnnotatedFields(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/artemis/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Lcom/artemis/utils/reflect/ReflectionException;
    new-instance v3, Lcom/artemis/MundaneWireException;

    const-string v4, "Error while wiring"

    invoke-direct {v3, v4, v1}, Lcom/artemis/MundaneWireException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method update()V
    .locals 6

    .prologue
    .line 33
    iget-object v5, p0, Lcom/artemis/Injector;->world:Lcom/artemis/World;

    invoke-virtual {v5}, Lcom/artemis/World;->getSystems()Lcom/artemis/utils/ImmutableBag;

    move-result-object v5

    invoke-interface {v5}, Lcom/artemis/utils/ImmutableBag;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artemis/EntitySystem;

    .line 34
    .local v1, "es":Lcom/artemis/EntitySystem;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 35
    .local v4, "origin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, v4

    .line 37
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v5, p0, Lcom/artemis/Injector;->systems:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v5, Ljava/lang/Object;

    if-ne v0, v5, :cond_0

    goto :goto_0

    .line 41
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "es":Lcom/artemis/EntitySystem;
    .end local v4    # "origin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v5, p0, Lcom/artemis/Injector;->world:Lcom/artemis/World;

    invoke-virtual {v5}, Lcom/artemis/World;->getManagers()Lcom/artemis/utils/ImmutableBag;

    move-result-object v5

    invoke-interface {v5}, Lcom/artemis/utils/ImmutableBag;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artemis/Manager;

    .line 42
    .local v3, "manager":Lcom/artemis/Manager;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 43
    .restart local v4    # "origin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, v4

    .line 45
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    iget-object v5, p0, Lcom/artemis/Injector;->managers:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v5, Ljava/lang/Object;

    if-ne v0, v5, :cond_2

    goto :goto_1

    .line 49
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "manager":Lcom/artemis/Manager;
    .end local v4    # "origin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-void
.end method
