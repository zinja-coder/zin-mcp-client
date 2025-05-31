.class public final Lcom/badlogic/gdx/utils/reflect/Field;
.super Ljava/lang/Object;
.source "Field.java"


# instance fields
.field private final field:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    .line 32
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/badlogic/gdx/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object is not an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 161
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access to field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDeclaredAnnotation(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/reflect/Annotation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/badlogic/gdx/utils/reflect/Annotation;"
        }
    .end annotation

    .prologue
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v5, 0x0

    .line 143
    iget-object v6, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 144
    .local v1, "annotations":[Ljava/lang/annotation/Annotation;
    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-object v5

    .line 147
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

    .line 148
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 149
    new-instance v5, Lcom/badlogic/gdx/utils/reflect/Annotation;

    invoke-direct {v5, v0}, Lcom/badlogic/gdx/utils/reflect/Annotation;-><init>(Ljava/lang/annotation/Annotation;)V

    goto :goto_0

    .line 147
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getDeclaredAnnotations()[Lcom/badlogic/gdx/utils/reflect/Annotation;
    .locals 5

    .prologue
    .line 131
    iget-object v3, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 132
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    array-length v3, v0

    new-array v2, v3, [Lcom/badlogic/gdx/utils/reflect/Annotation;

    .line 133
    .local v2, "result":[Lcom/badlogic/gdx/utils/reflect/Annotation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 134
    new-instance v3, Lcom/badlogic/gdx/utils/reflect/Annotation;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/reflect/Annotation;-><init>(Ljava/lang/annotation/Annotation;)V

    aput-object v3, v2, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-object v2
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getElementType(I)Ljava/lang/Class;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 105
    iget-object v4, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 106
    .local v3, "genericType":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_2

    .line 107
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .end local v3    # "genericType":Ljava/lang/reflect/Type;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 108
    .local v1, "actualTypes":[Ljava/lang/reflect/Type;
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-lt v4, p1, :cond_2

    .line 109
    aget-object v0, v1, p1

    .line 110
    .local v0, "actualType":Ljava/lang/reflect/Type;
    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 111
    check-cast v0, Ljava/lang/Class;

    .line 120
    .end local v0    # "actualType":Ljava/lang/reflect/Type;
    .end local v1    # "actualTypes":[Ljava/lang/reflect/Type;
    :goto_0
    return-object v0

    .line 112
    .restart local v0    # "actualType":Ljava/lang/reflect/Type;
    .restart local v1    # "actualTypes":[Ljava/lang/reflect/Type;
    :cond_0
    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    .line 113
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "actualType":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object v0, v4

    goto :goto_0

    .line 114
    .restart local v0    # "actualType":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v4, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_2

    .line 115
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .end local v0    # "actualType":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 116
    .local v2, "componentType":Ljava/lang/reflect/Type;
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_2

    check-cast v2, Ljava/lang/Class;

    .end local v2    # "componentType":Ljava/lang/reflect/Type;
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 120
    .end local v1    # "actualTypes":[Ljava/lang/reflect/Type;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public isAccessible()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

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
    .line 125
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isDefaultAccess()Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Field;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Field;->isProtected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Field;->isPublic()Z

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
    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    return v0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    return v0
.end method

.method public isVolatile()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/badlogic/gdx/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument not valid for field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 172
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access to field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAccessible(Z)V
    .locals 1
    .param p1, "accessible"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/utils/reflect/Field;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 55
    return-void
.end method
