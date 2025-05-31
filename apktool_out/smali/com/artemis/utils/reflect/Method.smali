.class public final Lcom/artemis/utils/reflect/Method;
.super Ljava/lang/Object;
.source "Method.java"


# instance fields
.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    .line 31
    return-void
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/artemis/utils/reflect/Method;->getDeclaredAnnotation(Ljava/lang/Class;)Lcom/artemis/utils/reflect/Annotation;

    move-result-object v0

    .line 129
    .local v0, "declaredAnnotation":Lcom/artemis/utils/reflect/Annotation;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/artemis/utils/reflect/Annotation;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeclaredAnnotation(Ljava/lang/Class;)Lcom/artemis/utils/reflect/Annotation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/artemis/utils/reflect/Annotation;"
        }
    .end annotation

    .prologue
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v5, 0x0

    .line 152
    iget-object v6, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 153
    .local v1, "annotations":[Ljava/lang/annotation/Annotation;
    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object v5

    .line 156
    :cond_1
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 157
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 158
    new-instance v5, Lcom/artemis/utils/reflect/Annotation;

    invoke-direct {v5, v0}, Lcom/artemis/utils/reflect/Annotation;-><init>(Ljava/lang/annotation/Annotation;)V

    goto :goto_0

    .line 156
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getDeclaredAnnotations()[Lcom/artemis/utils/reflect/Annotation;
    .locals 5

    .prologue
    .line 140
    iget-object v3, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 141
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    array-length v3, v0

    new-array v2, v3, [Lcom/artemis/utils/reflect/Annotation;

    .line 142
    .local v2, "result":[Lcom/artemis/utils/reflect/Annotation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 143
    new-instance v3, Lcom/artemis/utils/reflect/Annotation;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Lcom/artemis/utils/reflect/Annotation;-><init>(Ljava/lang/annotation/Annotation;)V

    aput-object v3, v2, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-object v2
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "annotationClass"    # Ljava/lang/Class;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/artemis/utils/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument(s) supplied to method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/artemis/utils/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 112
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access to method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/artemis/utils/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 114
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/artemis/utils/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAbstract()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public isAccessible()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isDefaultAccess()Z
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/artemis/utils/reflect/Method;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/artemis/utils/reflect/Method;->isProtected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/artemis/utils/reflect/Method;->isPublic()Z

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
    .line 73
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public isNative()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result v0

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    return v0
.end method

.method public setAccessible(Z)V
    .locals 1
    .param p1, "accessible"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/artemis/utils/reflect/Method;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    return-void
.end method
