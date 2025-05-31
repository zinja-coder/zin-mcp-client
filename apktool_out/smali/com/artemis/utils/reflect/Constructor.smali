.class public final Lcom/artemis/utils/reflect/Constructor;
.super Ljava/lang/Object;
.source "Constructor.java"


# instance fields
.field private final constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .param p1, "constructor"    # Ljava/lang/reflect/Constructor;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/artemis/utils/reflect/Constructor;->constructor:Ljava/lang/reflect/Constructor;

    .line 30
    return-void
.end method


# virtual methods
.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/artemis/utils/reflect/Constructor;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/artemis/utils/reflect/Constructor;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public isAccessible()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/artemis/utils/reflect/Constructor;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    return v0
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/artemis/utils/reflect/Constructor;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument(s) supplied to constructor for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/artemis/utils/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 56
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate instance of class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/artemis/utils/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 58
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate instance of class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/artemis/utils/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 60
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in constructor for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/artemis/utils/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAccessible(Z)V
    .locals 1
    .param p1, "accessible"    # Z

    .prologue
    .line 47
    iget-object v0, p0, Lcom/artemis/utils/reflect/Constructor;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 48
    return-void
.end method
