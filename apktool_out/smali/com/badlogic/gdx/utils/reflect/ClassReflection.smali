.class public final Lcom/badlogic/gdx/utils/reflect/ClassReflection;
.super Ljava/lang/Object;
.source "ClassReflection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/badlogic/gdx/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/badlogic/gdx/utils/reflect/Constructor;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/badlogic/gdx/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/Constructor;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/reflect/Constructor;-><init>(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security violation occurred while getting constructor for class: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 89
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor not found for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getConstructors(Ljava/lang/Class;)[Lcom/badlogic/gdx/utils/reflect/Constructor;
    .locals 6
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 74
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    array-length v4, v0

    new-array v3, v4, [Lcom/badlogic/gdx/utils/reflect/Constructor;

    .line 75
    .local v3, "result":[Lcom/badlogic/gdx/utils/reflect/Constructor;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 76
    new-instance v4, Lcom/badlogic/gdx/utils/reflect/Constructor;

    aget-object v5, v0, v1

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/reflect/Constructor;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v4, v3, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-object v3
.end method

.method public static getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Lcom/badlogic/gdx/utils/reflect/Annotation;
    .locals 6
    .param p0, "c"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/badlogic/gdx/utils/reflect/Annotation;"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 212
    .local v1, "annotations":[Ljava/lang/annotation/Annotation;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 213
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    new-instance v5, Lcom/badlogic/gdx/utils/reflect/Annotation;

    invoke-direct {v5, v0}, Lcom/badlogic/gdx/utils/reflect/Annotation;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 217
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :goto_1
    return-object v5

    .line 212
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getDeclaredAnnotations(Ljava/lang/Class;)[Lcom/badlogic/gdx/utils/reflect/Annotation;
    .locals 5
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 199
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 200
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    array-length v3, v0

    new-array v2, v3, [Lcom/badlogic/gdx/utils/reflect/Annotation;

    .line 201
    .local v2, "result":[Lcom/badlogic/gdx/utils/reflect/Annotation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 202
    new-instance v3, Lcom/badlogic/gdx/utils/reflect/Annotation;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/reflect/Annotation;-><init>(Ljava/lang/annotation/Annotation;)V

    aput-object v3, v2, v1

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-object v2
.end method

.method public static varargs getDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/badlogic/gdx/utils/reflect/Constructor;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/badlogic/gdx/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/Constructor;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/reflect/Constructor;-><init>(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security violation while getting constructor for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 101
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor not found for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/utils/reflect/Field;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/badlogic/gdx/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/reflect/Field;-><init>(Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security violation while getting field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 186
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDeclaredFields(Ljava/lang/Class;)[Lcom/badlogic/gdx/utils/reflect/Field;
    .locals 6
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 173
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v4, v0

    new-array v3, v4, [Lcom/badlogic/gdx/utils/reflect/Field;

    .line 174
    .local v3, "result":[Lcom/badlogic/gdx/utils/reflect/Field;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 175
    new-instance v4, Lcom/badlogic/gdx/utils/reflect/Field;

    aget-object v5, v0, v1

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/reflect/Field;-><init>(Ljava/lang/reflect/Field;)V

    aput-object v4, v3, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-object v3
.end method

.method public static varargs getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Lcom/badlogic/gdx/utils/reflect/Method;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/badlogic/gdx/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/Method;

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/reflect/Method;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security violation while getting method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 144
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDeclaredMethods(Ljava/lang/Class;)[Lcom/badlogic/gdx/utils/reflect/Method;
    .locals 6
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 131
    .local v2, "methods":[Ljava/lang/reflect/Method;
    array-length v4, v2

    new-array v3, v4, [Lcom/badlogic/gdx/utils/reflect/Method;

    .line 132
    .local v3, "result":[Lcom/badlogic/gdx/utils/reflect/Method;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v2

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 133
    new-instance v4, Lcom/badlogic/gdx/utils/reflect/Method;

    aget-object v5, v2, v0

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/reflect/Method;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v4, v3, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-object v3
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/utils/reflect/Field;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/badlogic/gdx/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/reflect/Field;-><init>(Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security violation while getting field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 165
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getFields(Ljava/lang/Class;)[Lcom/badlogic/gdx/utils/reflect/Field;
    .locals 6
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 152
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v4, v0

    new-array v3, v4, [Lcom/badlogic/gdx/utils/reflect/Field;

    .line 153
    .local v3, "result":[Lcom/badlogic/gdx/utils/reflect/Field;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 154
    new-instance v4, Lcom/badlogic/gdx/utils/reflect/Field;

    aget-object v5, v0, v1

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/reflect/Field;-><init>(Ljava/lang/reflect/Field;)V

    aput-object v4, v3, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-object v3
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Lcom/badlogic/gdx/utils/reflect/Method;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/badlogic/gdx/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/Method;

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/reflect/Method;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security violation while getting method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 123
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", for class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMethods(Ljava/lang/Class;)[Lcom/badlogic/gdx/utils/reflect/Method;
    .locals 6
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 108
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 109
    .local v2, "methods":[Ljava/lang/reflect/Method;
    array-length v4, v2

    new-array v3, v4, [Lcom/badlogic/gdx/utils/reflect/Method;

    .line 110
    .local v3, "result":[Lcom/badlogic/gdx/utils/reflect/Method;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v2

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 111
    new-instance v4, Lcom/badlogic/gdx/utils/reflect/Method;

    aget-object v5, v2, v0

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/reflect/Method;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v4, v3, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-object v3
.end method

.method public static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAnnotationPresent(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "c1"    # Ljava/lang/Class;
    .param p1, "c2"    # Ljava/lang/Class;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static isInstance(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMemberClass(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    return v0
.end method

.method public static isStaticClass(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/badlogic/gdx/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate instance of class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 66
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lcom/badlogic/gdx/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate instance of class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
