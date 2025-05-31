.class public final Lcom/badlogic/gdx/utils/reflect/Method;
.super Ljava/lang/Object;
.source "Method.java"


# instance fields
.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    .line 30
    return-void
.end method


# virtual methods
.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/badlogic/gdx/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument(s) supplied to method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 111
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access to method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public isAccessible()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    return v0
.end method

.method public isDefaultAccess()Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Method;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Method;->isProtected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Method;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinal()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public isNative()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result v0

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    return v0
.end method

.method public setAccessible(Z)V
    .locals 1
    .param p1, "accessible"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 58
    return-void
.end method
