.class public final Lcom/artemis/utils/reflect/ClassReflection;
.super Ljava/lang/Object;
.source "ClassReflection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 29
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .param p0, "c"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lcom/artemis/utils/reflect/ClassReflection;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Lcom/artemis/utils/reflect/Annotation;

    move-result-object v0

    .line 191
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

.method public static varargs getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/artemis/utils/reflect/Constructor;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Lcom/artemis/utils/reflect/Constructor;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/artemis/utils/reflect/Constructor;-><init>(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

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

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 88
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

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

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getConstructors(Ljava/lang/Class;)[Lcom/artemis/utils/reflect/Constructor;
    .locals 6
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 75
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    array-length v4, v0

    new-array v3, v4, [Lcom/artemis/utils/reflect/Constructor;

    .line 76
    .local v3, "result":[Lcom/artemis/utils/reflect/Constructor;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 77
    new-instance v4, Lcom/artemis/utils/reflect/Constructor;

    aget-object v5, v0, v1

    invoke-direct {v4, v5}, Lcom/artemis/utils/reflect/Constructor;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v4, v3, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object v3
.end method

.method public static getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Lcom/artemis/utils/reflect/Annotation;
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
            "Lcom/artemis/utils/reflect/Annotation;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 228
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

    .line 229
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    new-instance v5, Lcom/artemis/utils/reflect/Annotation;

    invoke-direct {v5, v0}, Lcom/artemis/utils/reflect/Annotation;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 233
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :goto_1
    return-object v5

    .line 228
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getDeclaredAnnotations(Ljava/lang/Class;)[Lcom/artemis/utils/reflect/Annotation;
    .locals 5
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 215
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 216
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    array-length v3, v0

    new-array v2, v3, [Lcom/artemis/utils/reflect/Annotation;

    .line 217
    .local v2, "result":[Lcom/artemis/utils/reflect/Annotation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 218
    new-instance v3, Lcom/artemis/utils/reflect/Annotation;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Lcom/artemis/utils/reflect/Annotation;-><init>(Ljava/lang/annotation/Annotation;)V

    aput-object v3, v2, v1

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-object v2
.end method

.method public static varargs getDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/artemis/utils/reflect/Constructor;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    new-instance v1, Lcom/artemis/utils/reflect/Constructor;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/artemis/utils/reflect/Constructor;-><init>(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

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

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 99
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

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

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Lcom/artemis/utils/reflect/Field;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    new-instance v1, Lcom/artemis/utils/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/artemis/utils/reflect/Field;-><init>(Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

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

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 200
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

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

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDeclaredFields(Ljava/lang/Class;)[Lcom/artemis/utils/reflect/Field;
    .locals 6
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 170
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v4, v0

    new-array v3, v4, [Lcom/artemis/utils/reflect/Field;

    .line 171
    .local v3, "result":[Lcom/artemis/utils/reflect/Field;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 172
    new-instance v4, Lcom/artemis/utils/reflect/Field;

    aget-object v5, v0, v1

    invoke-direct {v4, v5}, Lcom/artemis/utils/reflect/Field;-><init>(Ljava/lang/reflect/Field;)V

    aput-object v4, v3, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return-object v3
.end method

.method public static varargs getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Lcom/artemis/utils/reflect/Method;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    new-instance v1, Lcom/artemis/utils/reflect/Method;

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/artemis/utils/reflect/Method;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

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

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 141
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

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

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDeclaredMethods(Ljava/lang/Class;)[Lcom/artemis/utils/reflect/Method;
    .locals 6
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 128
    .local v2, "methods":[Ljava/lang/reflect/Method;
    array-length v4, v2

    new-array v3, v4, [Lcom/artemis/utils/reflect/Method;

    .line 129
    .local v3, "result":[Lcom/artemis/utils/reflect/Method;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v2

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 130
    new-instance v4, Lcom/artemis/utils/reflect/Method;

    aget-object v5, v2, v0

    invoke-direct {v4, v5}, Lcom/artemis/utils/reflect/Method;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v4, v3, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-object v3
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Lcom/artemis/utils/reflect/Field;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 159
    :try_start_0
    new-instance v1, Lcom/artemis/utils/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/artemis/utils/reflect/Field;-><init>(Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

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

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 162
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

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

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getFields(Ljava/lang/Class;)[Lcom/artemis/utils/reflect/Field;
    .locals 6
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 149
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v4, v0

    new-array v3, v4, [Lcom/artemis/utils/reflect/Field;

    .line 150
    .local v3, "result":[Lcom/artemis/utils/reflect/Field;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 151
    new-instance v4, Lcom/artemis/utils/reflect/Field;

    aget-object v5, v0, v1

    invoke-direct {v4, v5}, Lcom/artemis/utils/reflect/Field;-><init>(Ljava/lang/reflect/Field;)V

    aput-object v4, v3, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-object v3
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Lcom/artemis/utils/reflect/Method;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    new-instance v1, Lcom/artemis/utils/reflect/Method;

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/artemis/utils/reflect/Method;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

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

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 120
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

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

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMethods(Ljava/lang/Class;)[Lcom/artemis/utils/reflect/Method;
    .locals 6
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 106
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 107
    .local v2, "methods":[Ljava/lang/reflect/Method;
    array-length v4, v2

    new-array v3, v4, [Lcom/artemis/utils/reflect/Method;

    .line 108
    .local v3, "result":[Lcom/artemis/utils/reflect/Method;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v2

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 109
    new-instance v4, Lcom/artemis/utils/reflect/Method;

    aget-object v5, v2, v0

    invoke-direct {v4, v5}, Lcom/artemis/utils/reflect/Method;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v4, v3, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-object v3
.end method

.method public static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "annotationClass"    # Ljava/lang/Class;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    invoke-static {p0, p1}, Lcom/artemis/utils/reflect/ClassReflection;->isAnnotationPresent(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    return v0
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
    .line 209
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
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static isInstance(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMemberClass(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    return v0
.end method

.method public static isStaticClass(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 58
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
            Lcom/artemis/utils/reflect/ReflectionException;
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

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

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 67
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lcom/artemis/utils/reflect/ReflectionException;

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

    invoke-direct {v1, v2, v0}, Lcom/artemis/utils/reflect/ReflectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
