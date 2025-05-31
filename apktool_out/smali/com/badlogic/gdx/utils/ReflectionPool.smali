.class public Lcom/badlogic/gdx/utils/ReflectionPool;
.super Lcom/badlogic/gdx/utils/Pool;
.source "ReflectionPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/badlogic/gdx/utils/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/badlogic/gdx/utils/ReflectionPool;, "Lcom/badlogic/gdx/utils/ReflectionPool<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v0, 0x10

    const v1, 0x7fffffff

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/ReflectionPool;-><init>(Ljava/lang/Class;II)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/badlogic/gdx/utils/ReflectionPool;, "Lcom/badlogic/gdx/utils/ReflectionPool<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/ReflectionPool;-><init>(Ljava/lang/Class;II)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;II)V
    .locals 3
    .param p2, "initialCapacity"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/badlogic/gdx/utils/ReflectionPool;, "Lcom/badlogic/gdx/utils/ReflectionPool<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    .line 39
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ReflectionPool;->findConstructor(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ReflectionPool;->constructor:Lcom/badlogic/gdx/utils/reflect/Constructor;

    .line 40
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ReflectionPool;->constructor:Lcom/badlogic/gdx/utils/reflect/Constructor;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class cannot be created (missing no-arg constructor): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    return-void
.end method

.method private findConstructor(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/badlogic/gdx/utils/reflect/Constructor;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ReflectionPool;, "Lcom/badlogic/gdx/utils/ReflectionPool<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 46
    const/4 v3, 0x0

    :try_start_0
    check-cast v3, [Ljava/lang/Class;

    invoke-static {p1, v3}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/badlogic/gdx/utils/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v1

    .line 49
    .local v1, "ex1":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_1
    check-cast v3, [Ljava/lang/Class;

    invoke-static {p1, v3}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/badlogic/gdx/utils/reflect/Constructor;

    move-result-object v0

    .line 50
    .local v0, "constructor":Lcom/badlogic/gdx/utils/reflect/Constructor;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 52
    .end local v0    # "constructor":Lcom/badlogic/gdx/utils/reflect/Constructor;
    :catch_1
    move-exception v2

    .local v2, "ex2":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    move-object v0, v4

    .line 53
    goto :goto_0
.end method


# virtual methods
.method protected newObject()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/badlogic/gdx/utils/ReflectionPool;, "Lcom/badlogic/gdx/utils/ReflectionPool<TT;>;"
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ReflectionPool;->constructor:Lcom/badlogic/gdx/utils/reflect/Constructor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create new instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ReflectionPool;->constructor:Lcom/badlogic/gdx/utils/reflect/Constructor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
