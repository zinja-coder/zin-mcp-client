.class public Lcom/badlogic/gdx/utils/Json;
.super Ljava/lang/Object;
.source "Json.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Json$Serializable;,
        Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;,
        Lcom/badlogic/gdx/utils/Json$Serializer;,
        Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    }
.end annotation


# static fields
.field private static final debug:Z


# instance fields
.field private final classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/Json$Serializer;",
            ">;"
        }
    .end annotation
.end field

.field private final classToTag:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultSerializer:Lcom/badlogic/gdx/utils/Json$Serializer;

.field private enumNames:Z

.field private final equals1:[Ljava/lang/Object;

.field private final equals2:[Ljava/lang/Object;

.field private ignoreUnknownFields:Z

.field private outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field private quoteLongValues:Z

.field private final tagToClass:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private typeName:Ljava/lang/String;

.field private final typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/OrderedMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Json$FieldMetadata;",
            ">;>;"
        }
    .end annotation
.end field

.field private usePrototypes:Z

.field private writer:Lcom/badlogic/gdx/utils/JsonWriter;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "class"

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/Json;->usePrototypes:Z

    .line 55
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/Json;->enumNames:Z

    .line 57
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->tagToClass:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 59
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToTag:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 62
    new-array v0, v1, [Ljava/lang/Object;

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->equals1:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->equals2:[Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V
    .locals 4
    .param p1, "outputType"    # Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "class"

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/Json;->usePrototypes:Z

    .line 55
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/Json;->enumNames:Z

    .line 57
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->tagToClass:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 59
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToTag:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 62
    new-array v0, v1, [Ljava/lang/Object;

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->equals1:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Json;->equals2:[Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 70
    return-void
.end method

.method private convertToString(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .param p1, "e"    # Ljava/lang/Enum;

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Json;->enumNames:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 994
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    .line 996
    :goto_0
    return-object v0

    .line 995
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Class;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 996
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultValues(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 13
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    const/4 v10, 0x0

    .line 297
    iget-boolean v11, p0, Lcom/badlogic/gdx/utils/Json;->usePrototypes:Z

    if-nez v11, :cond_0

    .line 327
    :goto_0
    return-object v10

    .line 298
    :cond_0
    iget-object v11, p0, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v11, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v10, p0, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v10, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    goto :goto_0

    .line 301
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 307
    .local v7, "object":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v2

    .line 308
    .local v2, "fields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    iget v10, v2, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    new-array v9, v10, [Ljava/lang/Object;

    .line 309
    .local v9, "values":[Ljava/lang/Object;
    iget-object v10, p0, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v10, p1, v9}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const/4 v3, 0x0

    .line 312
    .local v3, "i":I
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    .line 313
    .local v6, "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    iget-object v1, v6, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->field:Lcom/badlogic/gdx/utils/reflect/Field;

    .line 315
    .local v1, "field":Lcom/badlogic/gdx/utils/reflect/Field;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    :try_start_1
    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v3
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move v3, v4

    .line 326
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 302
    .end local v1    # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    .end local v2    # "fields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    .end local v3    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .end local v7    # "object":Ljava/lang/Object;
    .end local v9    # "values":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v11, p0, Lcom/badlogic/gdx/utils/Json;->classToDefaultValues:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v11, p1, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 316
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    .restart local v2    # "fields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    .restart local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .restart local v7    # "object":Ljava/lang/Object;
    .restart local v9    # "values":[Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 317
    .local v0, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    new-instance v10, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error accessing field: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 318
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :catch_2
    move-exception v0

    .line 319
    .local v0, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 320
    throw v0

    .line 321
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_3
    move-exception v8

    .line 322
    .local v8, "runtimeEx":Ljava/lang/RuntimeException;
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v0, v8}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 323
    .restart local v0    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 324
    throw v0

    .end local v0    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    .end local v1    # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    .end local v4    # "i":I
    .end local v6    # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .end local v8    # "runtimeEx":Ljava/lang/RuntimeException;
    .restart local v3    # "i":I
    :cond_2
    move-object v10, v9

    .line 327
    goto/16 :goto_0
.end method

.method private getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;
    .locals 11
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Lcom/badlogic/gdx/utils/OrderedMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Json$FieldMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v9, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v9, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/OrderedMap;

    .line 149
    .local v4, "fields":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    if-eqz v4, :cond_0

    .line 180
    .end local v4    # "fields":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    :goto_0
    return-object v4

    .line 151
    .restart local v4    # "fields":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 152
    .local v1, "classHierarchy":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Class;>;"
    move-object v8, p1

    .line 153
    .local v8, "nextClass":Ljava/lang/Class;
    :goto_1
    const-class v9, Ljava/lang/Object;

    if-eq v8, v9, :cond_1

    .line 154
    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 155
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    goto :goto_1

    .line 157
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "allFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/reflect/Field;>;"
    iget v9, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v5, v9, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_2

    .line 159
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    invoke-static {v9}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getDeclaredFields(Ljava/lang/Class;)[Lcom/badlogic/gdx/utils/reflect/Field;

    move-result-object v9

    invoke-static {v0, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 161
    :cond_2
    new-instance v7, Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/OrderedMap;-><init>()V

    .line 162
    .local v7, "nameToField":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "n":I
    :goto_3
    if-ge v5, v6, :cond_6

    .line 163
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/reflect/Field;

    .line 165
    .local v3, "field":Lcom/badlogic/gdx/utils/reflect/Field;
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/reflect/Field;->isTransient()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 162
    :cond_3
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 166
    :cond_4
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/reflect/Field;->isStatic()Z

    move-result v9

    if-nez v9, :cond_3

    .line 167
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/reflect/Field;->isSynthetic()Z

    move-result v9

    if-nez v9, :cond_3

    .line 169
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/reflect/Field;->isAccessible()Z

    move-result v9

    if-nez v9, :cond_5

    .line 171
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/utils/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_5
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    invoke-direct {v10, v3}, Lcom/badlogic/gdx/utils/Json$FieldMetadata;-><init>(Lcom/badlogic/gdx/utils/reflect/Field;)V

    invoke-virtual {v7, v9, v10}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "ex":Ljava/security/AccessControlException;
    goto :goto_4

    .line 179
    .end local v2    # "ex":Ljava/security/AccessControlException;
    .end local v3    # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    :cond_6
    iget-object v9, p0, Lcom/badlogic/gdx/utils/Json;->typeToFields:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v9, p1, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v7

    .line 180
    goto :goto_0
.end method


# virtual methods
.method public addClassTag(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->tagToClass:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToTag:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;
    .locals 4
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 681
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .param p2, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 654
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;
    .locals 4
    .param p2, "elementType"    # Ljava/lang/Class;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p2, "elementType"    # Ljava/lang/Class;
    .param p3, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 674
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .param p2, "elementType"    # Ljava/lang/Class;
    .param p3, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 661
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p2, "elementType"    # Ljava/lang/Class;
    .param p3, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/Class;[CII)Ljava/lang/Object;
    .locals 1
    .param p2, "elementType"    # Ljava/lang/Class;
    .param p3, "data"    # [C
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class;",
            "[CII)TT;"
        }
    .end annotation

    .prologue
    .line 708
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p3, p4, p5}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 714
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/Class;[CII)Ljava/lang/Object;
    .locals 2
    .param p2, "data"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[CII)TT;"
        }
    .end annotation

    .prologue
    .line 701
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v1, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->tagToClass:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public getSerializer(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Json$Serializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/badlogic/gdx/utils/Json$Serializer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Json$Serializer;

    return-object v0
.end method

.method public getTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToTag:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWriter()Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    return-object v0
.end method

.method protected newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    const/4 v5, 0x0

    .line 1001
    :try_start_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1012
    :goto_0
    return-object v4

    .line 1002
    :catch_0
    move-exception v1

    .line 1005
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {p1, v4}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/badlogic/gdx/utils/reflect/Constructor;

    move-result-object v0

    .line 1006
    .local v0, "constructor":Lcom/badlogic/gdx/utils/reflect/Constructor;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/reflect/Constructor;->setAccessible(Z)V

    .line 1007
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_0

    .line 1009
    .end local v0    # "constructor":Lcom/badlogic/gdx/utils/reflect/Constructor;
    :catch_1
    move-exception v2

    .line 1010
    .local v2, "ignored":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    const-class v4, Ljava/lang/Enum;

    invoke-static {v4, p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1011
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 1012
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v5

    goto :goto_0

    .line 1014
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1015
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encountered JSON object when expected array of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1016
    :cond_2
    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isMemberClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isStaticClass(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1017
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class cannot be created (non-static member class): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1019
    :cond_3
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class cannot be created (missing no-arg constructor): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1020
    .end local v2    # "ignored":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :catch_2
    move-exception v3

    .line 1021
    .local v3, "privateConstructorException":Ljava/lang/Exception;
    move-object v1, v3

    .line 1023
    .end local v3    # "privateConstructorException":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error constructing instance of class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1008
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public prettyPrint(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1028
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "singleLineColumns"    # I

    .prologue
    .line 1036
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "settings"    # Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    .prologue
    .line 1044
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 1032
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "singleLineColumns"    # I

    .prologue
    .line 1040
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    .prologue
    .line 1048
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readField(Ljava/lang/Object;Lcom/badlogic/gdx/utils/reflect/Field;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "field"    # Lcom/badlogic/gdx/utils/reflect/Field;
    .param p3, "jsonName"    # Ljava/lang/String;
    .param p4, "elementType"    # Ljava/lang/Class;
    .param p5, "jsonMap"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 749
    invoke-virtual {p5, p3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    .line 750
    .local v1, "jsonValue":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v1, :cond_0

    .line 764
    :goto_0
    return-void

    .line 752
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3, p4, v1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/badlogic/gdx/utils/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error accessing field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 756
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :catch_1
    move-exception v0

    .line 757
    .local v0, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 758
    throw v0

    .line 759
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_2
    move-exception v2

    .line 760
    .local v2, "runtimeEx":Ljava/lang/RuntimeException;
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 761
    .restart local v0    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 762
    throw v0
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 724
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/utils/Json;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 725
    return-void
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "elementType"    # Ljava/lang/Class;
    .param p4, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 728
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/utils/Json;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 729
    return-void
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "jsonName"    # Ljava/lang/String;
    .param p4, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 732
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/utils/Json;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 733
    return-void
.end method

.method public readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "jsonName"    # Ljava/lang/String;
    .param p4, "elementType"    # Ljava/lang/Class;
    .param p5, "jsonMap"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 737
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 738
    .local v8, "type":Ljava/lang/Class;
    invoke-direct {p0, v8}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v6

    .line 739
    .local v6, "fields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    invoke-virtual {v6, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    .line 740
    .local v7, "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    if-nez v7, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_0
    iget-object v2, v7, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->field:Lcom/badlogic/gdx/utils/reflect/Field;

    .line 742
    .local v2, "field":Lcom/badlogic/gdx/utils/reflect/Field;
    if-nez p4, :cond_1

    iget-object p4, v7, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->elementType:Ljava/lang/Class;

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 743
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/utils/Json;->readField(Ljava/lang/Object;Lcom/badlogic/gdx/utils/reflect/Field;Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 744
    return-void
.end method

.method public readFields(Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "jsonMap"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 767
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 768
    .local v6, "type":Ljava/lang/Class;
    invoke-direct {p0, v6}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v3

    .line 769
    .local v3, "fields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    iget-object v0, p2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v0, :cond_2

    .line 770
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    .line 771
    .local v4, "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    if-nez v4, :cond_1

    .line 772
    iget-boolean v7, p0, Lcom/badlogic/gdx/utils/Json;->ignoreUnknownFields:Z

    if-eqz v7, :cond_0

    .line 769
    :goto_1
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 776
    :cond_0
    new-instance v7, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Field not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 778
    :cond_1
    iget-object v2, v4, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->field:Lcom/badlogic/gdx/utils/reflect/Field;

    .line 780
    .local v2, "field":Lcom/badlogic/gdx/utils/reflect/Field;
    :try_start_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, v4, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->elementType:Ljava/lang/Class;

    invoke-virtual {p0, v7, v8, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, p1, v7}, Lcom/badlogic/gdx/utils/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 781
    :catch_0
    move-exception v1

    .line 782
    .local v1, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    new-instance v7, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error accessing field: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 783
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :catch_1
    move-exception v1

    .line 784
    .local v1, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 785
    throw v1

    .line 786
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_2
    move-exception v5

    .line 787
    .local v5, "runtimeEx":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v5}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 788
    .restart local v1    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 789
    throw v1

    .line 792
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    .end local v2    # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    .end local v4    # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .end local v5    # "runtimeEx":Ljava/lang/RuntimeException;
    :cond_2
    return-void
.end method

.method public readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .locals 1
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 834
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .locals 21
    .param p2, "elementType"    # Ljava/lang/Class;
    .param p3, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 841
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p3, :cond_1

    const/4 v15, 0x0

    .line 986
    :cond_0
    :goto_0
    return-object v15

    .line 843
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v18

    if-eqz v18, :cond_42

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    const/4 v5, 0x0

    .line 845
    .local v5, "className":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_2

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->remove(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    .line 847
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Json;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 848
    if-nez p1, :cond_2

    .line 850
    :try_start_0
    invoke-static {v5}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 857
    :cond_2
    if-nez p1, :cond_5

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Json;->defaultSerializer:Lcom/badlogic/gdx/utils/Json$Serializer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Json;->defaultSerializer:Lcom/badlogic/gdx/utils/Json$Serializer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json$Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    .line 844
    .end local v5    # "className":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 851
    .restart local v5    # "className":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 852
    .local v9, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    new-instance v18, Lcom/badlogic/gdx/utils/SerializationException;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .end local v9    # "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :cond_4
    move-object/from16 v15, p3

    .line 859
    goto :goto_0

    .line 862
    :cond_5
    const-class v18, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_6

    const-class v18, Ljava/lang/Integer;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_6

    const-class v18, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_6

    const-class v18, Ljava/lang/Float;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_6

    const-class v18, Ljava/lang/Long;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_6

    const-class v18, Ljava/lang/Double;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_6

    const-class v18, Ljava/lang/Short;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_6

    const-class v18, Ljava/lang/Byte;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_6

    const-class v18, Ljava/lang/Character;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_6

    const-class v18, Ljava/lang/Enum;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 865
    :cond_6
    const-string v18, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v15

    goto/16 :goto_0

    .line 868
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    const-class v18, Ljava/util/Collection;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 870
    const-string v18, "items"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p3

    move-object/from16 v12, p3

    .line 907
    .end local v5    # "className":Ljava/lang/String;
    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .local v12, "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_2
    if-eqz p1, :cond_e

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/badlogic/gdx/utils/Json$Serializer;

    .line 909
    .local v16, "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    if-eqz v16, :cond_e

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v12, v2}, Lcom/badlogic/gdx/utils/Json$Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 p3, v12

    .end local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    goto/16 :goto_0

    .line 872
    .end local v16    # "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    .restart local v5    # "className":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/badlogic/gdx/utils/Json$Serializer;

    .line 873
    .restart local v16    # "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json$Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    goto/16 :goto_0

    .line 875
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/utils/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    .line 877
    .local v14, "object":Ljava/lang/Object;
    instance-of v0, v14, Lcom/badlogic/gdx/utils/Json$Serializable;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v18, v14

    .line 878
    check-cast v18, Lcom/badlogic/gdx/utils/Json$Serializable;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json$Serializable;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    move-object v15, v14

    .line 879
    goto/16 :goto_0

    .line 883
    :cond_a
    instance-of v0, v14, Lcom/badlogic/gdx/utils/ObjectMap;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object v15, v14

    .line 884
    check-cast v15, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 885
    .local v15, "result":Lcom/badlogic/gdx/utils/ObjectMap;
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v4, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_3
    if-eqz v4, :cond_0

    .line 886
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->name()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iget-object v4, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_3

    .line 889
    .end local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v15    # "result":Lcom/badlogic/gdx/utils/ObjectMap;
    :cond_b
    instance-of v0, v14, Lcom/badlogic/gdx/utils/ArrayMap;

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object v15, v14

    .line 890
    check-cast v15, Lcom/badlogic/gdx/utils/ArrayMap;

    .line 891
    .local v15, "result":Lcom/badlogic/gdx/utils/ArrayMap;
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_4
    if-eqz v4, :cond_0

    .line 892
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->name()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 891
    iget-object v4, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_4

    .line 895
    .end local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v15    # "result":Lcom/badlogic/gdx/utils/ArrayMap;
    :cond_c
    instance-of v0, v14, Ljava/util/Map;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object v15, v14

    .line 896
    check-cast v15, Ljava/util/Map;

    .line 897
    .local v15, "result":Ljava/util/Map;
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_5
    if-eqz v4, :cond_0

    .line 898
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->name()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    iget-object v4, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_5

    .line 902
    .end local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v15    # "result":Ljava/util/Map;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v1}, Lcom/badlogic/gdx/utils/Json;->readFields(Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)V

    move-object v15, v14

    .line 903
    goto/16 :goto_0

    .line 912
    .end local v5    # "className":Ljava/lang/String;
    .end local v14    # "object":Ljava/lang/Object;
    .end local v16    # "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_e
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 914
    if-eqz p1, :cond_f

    const-class v18, Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    :cond_f
    const-class p1, Lcom/badlogic/gdx/utils/Array;

    .line 915
    :cond_10
    const-class v18, Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 916
    const-class v18, Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    new-instance v15, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v15}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 917
    .local v15, "result":Lcom/badlogic/gdx/utils/Array;
    :goto_6
    iget-object v4, v12, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_7
    if-eqz v4, :cond_12

    .line 918
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 917
    iget-object v4, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_7

    .line 916
    .end local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v15    # "result":Lcom/badlogic/gdx/utils/Array;
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/utils/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v15, v18

    goto :goto_6

    .restart local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v15    # "result":Lcom/badlogic/gdx/utils/Array;
    :cond_12
    move-object/from16 p3, v12

    .line 919
    .end local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    goto/16 :goto_0

    .line 921
    .end local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v15    # "result":Lcom/badlogic/gdx/utils/Array;
    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_13
    const-class v18, Ljava/util/Collection;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 922
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v18

    if-eqz v18, :cond_14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .local v15, "result":Ljava/util/Collection;
    :goto_8
    iget-object v4, v12, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_9
    if-eqz v4, :cond_15

    .line 924
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object v4, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_9

    .line 922
    .end local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v15    # "result":Ljava/util/Collection;
    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/utils/Json;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Collection;

    move-object/from16 v15, v18

    goto :goto_8

    .restart local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v15    # "result":Ljava/util/Collection;
    :cond_15
    move-object/from16 p3, v12

    .line 925
    .end local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    goto/16 :goto_0

    .line 927
    .end local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v15    # "result":Ljava/util/Collection;
    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v18

    if-eqz v18, :cond_19

    .line 928
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    .line 929
    .local v6, "componentType":Ljava/lang/Class;
    if-nez p2, :cond_17

    move-object/from16 p2, v6

    .line 930
    :cond_17
    iget v0, v12, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v6, v0}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v15

    .line 931
    .local v15, "result":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 932
    .local v10, "i":I
    iget-object v4, v12, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    move v11, v10

    .end local v10    # "i":I
    .local v11, "i":I
    :goto_a
    if-eqz v4, :cond_18

    .line 933
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v11, v0}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 932
    iget-object v4, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_a

    :cond_18
    move-object/from16 p3, v12

    .line 934
    .end local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    goto/16 :goto_0

    .line 936
    .end local v4    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v6    # "componentType":Ljava/lang/Class;
    .end local v11    # "i":I
    .end local v15    # "result":Ljava/lang/Object;
    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_19
    new-instance v18, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to convert value to required type: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 939
    :cond_1a
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/JsonValue;->isNumber()Z

    move-result v18

    if-eqz v18, :cond_41

    .line 941
    if-eqz p1, :cond_1b

    :try_start_1
    sget-object v18, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1b

    const-class v18, Ljava/lang/Float;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1c

    :cond_1b
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 p3, v12

    .end local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    goto/16 :goto_0

    .line 942
    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_1c
    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1d

    const-class v18, Ljava/lang/Integer;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1e

    :cond_1d
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 p3, v12

    .end local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    goto/16 :goto_0

    .line 943
    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_1e
    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1f

    const-class v18, Ljava/lang/Long;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_20

    :cond_1f
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 p3, v12

    .end local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    goto/16 :goto_0

    .line 944
    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_20
    sget-object v18, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_21

    const-class v18, Ljava/lang/Double;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_22

    :cond_21
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    move-object/from16 p3, v12

    .end local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    goto/16 :goto_0

    .line 945
    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_22
    const-class v18, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_23

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p3, v12

    .end local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    goto/16 :goto_0

    .line 946
    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_23
    sget-object v18, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_24

    const-class v18, Ljava/lang/Short;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_25

    :cond_24
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    move-object/from16 p3, v12

    .end local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    goto/16 :goto_0

    .line 947
    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_25
    sget-object v18, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_26

    const-class v18, Ljava/lang/Byte;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_27

    :cond_26
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    move-object/from16 p3, v12

    .end local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    goto/16 :goto_0

    .line 948
    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :catch_1
    move-exception v18

    .line 950
    :cond_27
    new-instance p3, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    .line 953
    .end local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_b
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result v18

    if-eqz v18, :cond_2a

    .line 955
    if-eqz p1, :cond_28

    :try_start_2
    sget-object v18, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_28

    const-class v18, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_29

    :cond_28
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v15

    goto/16 :goto_0

    .line 956
    :catch_2
    move-exception v18

    .line 958
    :cond_29
    new-instance v12, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    move-object/from16 p3, v12

    .line 961
    .end local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_2a
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v18

    if-eqz v18, :cond_40

    .line 962
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v17

    .line 963
    .local v17, "string":Ljava/lang/String;
    if-eqz p1, :cond_2b

    const-class v18, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2c

    :cond_2b
    move-object/from16 v15, v17

    goto/16 :goto_0

    .line 965
    :cond_2c
    :try_start_3
    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2d

    const-class v18, Ljava/lang/Integer;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2e

    :cond_2d
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    goto/16 :goto_0

    .line 966
    :cond_2e
    sget-object v18, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2f

    const-class v18, Ljava/lang/Float;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_30

    :cond_2f
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    goto/16 :goto_0

    .line 967
    :cond_30
    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_31

    const-class v18, Ljava/lang/Long;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_32

    :cond_31
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    goto/16 :goto_0

    .line 968
    :cond_32
    sget-object v18, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_33

    const-class v18, Ljava/lang/Double;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_34

    :cond_33
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v15

    goto/16 :goto_0

    .line 969
    :cond_34
    sget-object v18, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_35

    const-class v18, Ljava/lang/Short;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_36

    :cond_35
    invoke-static/range {v17 .. v17}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v15

    goto/16 :goto_0

    .line 970
    :cond_36
    sget-object v18, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_37

    const-class v18, Ljava/lang/Byte;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_38

    :cond_37
    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v15

    goto/16 :goto_0

    .line 971
    :catch_3
    move-exception v18

    .line 973
    :cond_38
    sget-object v18, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_39

    const-class v18, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3a

    :cond_39
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    goto/16 :goto_0

    .line 974
    :cond_3a
    sget-object v18, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_3b

    const-class v18, Ljava/lang/Character;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3c

    :cond_3b
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    goto/16 :goto_0

    .line 975
    :cond_3c
    const-class v18, Ljava/lang/Enum;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_3e

    .line 976
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Enum;

    move-object/from16 v7, v18

    check-cast v7, [Ljava/lang/Enum;

    .line 977
    .local v7, "constants":[Ljava/lang/Enum;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    array-length v13, v7

    .local v13, "n":I
    :goto_c
    if-ge v10, v13, :cond_3e

    .line 978
    aget-object v8, v7, v10

    .line 979
    .local v8, "e":Ljava/lang/Enum;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3d

    move-object v15, v8

    goto/16 :goto_0

    .line 977
    :cond_3d
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 982
    .end local v7    # "constants":[Ljava/lang/Enum;
    .end local v8    # "e":Ljava/lang/Enum;
    .end local v10    # "i":I
    .end local v13    # "n":I
    :cond_3e
    const-class v18, Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3f

    move-object/from16 v15, v17

    goto/16 :goto_0

    .line 983
    :cond_3f
    new-instance v18, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to convert value to required type: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 986
    .end local v17    # "string":Ljava/lang/String;
    :cond_40
    const/4 v15, 0x0

    goto/16 :goto_0

    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_41
    move-object/from16 p3, v12

    .end local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    goto/16 :goto_b

    :cond_42
    move-object/from16 v12, p3

    .end local p3    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v12    # "jsonData":Lcom/badlogic/gdx/utils/JsonValue;
    goto/16 :goto_2
.end method

.method public readValue(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .locals 1
    .param p2, "elementType"    # Ljava/lang/Class;
    .param p4, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class;",
            "TT;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 828
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2, p4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "jsonMap"    # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 797
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "elementType"    # Ljava/lang/Class;
    .param p4, "jsonMap"    # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 812
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p2, p3, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "elementType"    # Ljava/lang/Class;
    .param p5, "jsonMap"    # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class;",
            "TT;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 819
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p5, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 820
    .local v0, "jsonValue":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    .line 821
    .end local p4    # "defaultValue":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p4

    .restart local p4    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p2, p3, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_0
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "jsonMap"    # Lcom/badlogic/gdx/utils/JsonValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 803
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 804
    .local v0, "jsonValue":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    .line 805
    .end local p3    # "defaultValue":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p3

    .restart local p3    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v0}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0
.end method

.method public setDefaultSerializer(Lcom/badlogic/gdx/utils/Json$Serializer;)V
    .locals 0
    .param p1, "defaultSerializer"    # Lcom/badlogic/gdx/utils/Json$Serializer;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->defaultSerializer:Lcom/badlogic/gdx/utils/Json$Serializer;

    .line 121
    return-void
.end method

.method public setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "elementType"    # Ljava/lang/Class;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v0

    .line 142
    .local v0, "fields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    .line 143
    .local v1, "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    if-nez v1, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_0
    iput-object p3, v1, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->elementType:Ljava/lang/Class;

    .line 145
    return-void
.end method

.method public setEnumNames(Z)V
    .locals 0
    .param p1, "enumNames"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->enumNames:Z

    .line 92
    return-void
.end method

.method public setIgnoreUnknownFields(Z)V
    .locals 0
    .param p1, "ignoreUnknownFields"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->ignoreUnknownFields:Z

    .line 76
    return-void
.end method

.method public setOutputType(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V
    .locals 0
    .param p1, "outputType"    # Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 81
    return-void
.end method

.method public setQuoteLongValues(Z)V
    .locals 0
    .param p1, "quoteLongValues"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->quoteLongValues:Z

    .line 86
    return-void
.end method

.method public setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/utils/Json$Serializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;, "Lcom/badlogic/gdx/utils/Json$Serializer<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setUsePrototypes(Z)V
    .locals 0
    .param p1, "usePrototypes"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Json;->usePrototypes:Z

    .line 136
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 245
    instance-of v1, p1, Lcom/badlogic/gdx/utils/JsonWriter;

    if-nez v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter;-><init>(Ljava/io/Writer;)V

    .end local p1    # "writer":Ljava/io/Writer;
    .local v0, "writer":Ljava/io/Writer;
    move-object p1, v0

    .line 246
    .end local v0    # "writer":Ljava/io/Writer;
    .restart local p1    # "writer":Ljava/io/Writer;
    :cond_0
    check-cast p1, Lcom/badlogic/gdx/utils/JsonWriter;

    .end local p1    # "writer":Ljava/io/Writer;
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    .line 247
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Json;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonWriter;->setOutputType(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 248
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Json;->quoteLongValues:Z

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonWriter;->setQuoteLongValues(Z)V

    .line 249
    return-void
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 184
    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "knownType"    # Ljava/lang/Class;

    .prologue
    .line 188
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "knownType"    # Ljava/lang/Class;
    .param p3, "elementType"    # Ljava/lang/Class;

    .prologue
    .line 194
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 195
    .local v0, "buffer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V

    .line 196
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/lang/Object;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    const/4 v1, 0x0

    .line 200
    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 201
    return-void

    .line 200
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "writer"    # Ljava/io/Writer;

    .prologue
    const/4 v1, 0x0

    .line 223
    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V

    .line 224
    return-void

    .line 223
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "knownType"    # Ljava/lang/Class;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 206
    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/Writer;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "knownType"    # Ljava/lang/Class;
    .param p3, "writer"    # Ljava/io/Writer;

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V

    .line 229
    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "knownType"    # Ljava/lang/Class;
    .param p3, "elementType"    # Ljava/lang/Class;
    .param p4, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 211
    const/4 v1, 0x0

    .line 213
    .local v1, "writer":Ljava/io/Writer;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p4, v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->writer(ZLjava/lang/String;)Ljava/io/Writer;

    move-result-object v1

    .line 214
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 220
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/io/Writer;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "knownType"    # Ljava/lang/Class;
    .param p3, "elementType"    # Ljava/lang/Class;
    .param p4, "writer"    # Ljava/io/Writer;

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    .line 236
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 239
    iput-object v2, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    .line 241
    return-void

    .line 238
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 239
    iput-object v2, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    throw v0
.end method

.method public writeArrayEnd()V
    .locals 2

    .prologue
    .line 633
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    return-void

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeArrayStart()V
    .locals 2

    .prologue
    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonWriter;->array()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeArrayStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 617
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonWriter;->array()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/badlogic/gdx/utils/Json;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 333
    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "elementType"    # Ljava/lang/Class;

    .prologue
    .line 338
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/badlogic/gdx/utils/Json;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 339
    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "jsonName"    # Ljava/lang/String;

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/Json;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 344
    return-void
.end method

.method public writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "jsonName"    # Ljava/lang/String;
    .param p4, "elementType"    # Ljava/lang/Class;

    .prologue
    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 350
    .local v5, "type":Ljava/lang/Class;
    invoke-direct {p0, v5}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v2

    .line 351
    .local v2, "fields":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    .line 352
    .local v3, "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    if-nez v3, :cond_0

    new-instance v6, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Field not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 353
    :cond_0
    iget-object v1, v3, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->field:Lcom/badlogic/gdx/utils/reflect/Field;

    .line 354
    .local v1, "field":Lcom/badlogic/gdx/utils/reflect/Field;
    if-nez p4, :cond_1

    iget-object p4, v3, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->elementType:Ljava/lang/Class;

    .line 357
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v6, p3}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 358
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v6, v7, p4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 369
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    new-instance v6, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error accessing field: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 361
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :catch_1
    move-exception v0

    .line 362
    .local v0, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 363
    throw v0

    .line 364
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_2
    move-exception v4

    .line 365
    .local v4, "runtimeEx":Ljava/lang/Exception;
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 366
    .restart local v0    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 367
    throw v0
.end method

.method public writeFields(Ljava/lang/Object;)V
    .locals 16
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 257
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 259
    .local v11, "type":Ljava/lang/Class;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/badlogic/gdx/utils/Json;->getDefaultValues(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 261
    .local v2, "defaultValues":[Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/badlogic/gdx/utils/Json;->getFields(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/OrderedMap;

    move-result-object v5

    .line 262
    .local v5, "fields":Lcom/badlogic/gdx/utils/OrderedMap;, "Lcom/badlogic/gdx/utils/OrderedMap<Ljava/lang/String;Lcom/badlogic/gdx/utils/Json$FieldMetadata;>;"
    const/4 v6, 0x0

    .line 263
    .local v6, "i":I
    new-instance v13, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;

    invoke-direct {v13, v5}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;)V

    invoke-virtual {v13}, Lcom/badlogic/gdx/utils/OrderedMap$OrderedMapValues;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/utils/Json$FieldMetadata;

    .line 264
    .local v9, "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    iget-object v4, v9, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->field:Lcom/badlogic/gdx/utils/reflect/Field;

    .line 266
    .local v4, "field":Lcom/badlogic/gdx/utils/reflect/Field;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v12

    .line 267
    .local v12, "value":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 268
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    :try_start_1
    aget-object v1, v2, v6

    .line 269
    .local v1, "defaultValue":Ljava/lang/Object;
    if-nez v12, :cond_0

    if-nez v1, :cond_0

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .line 270
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_0
    if-eqz v12, :cond_2

    if-eqz v1, :cond_2

    .line 271
    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .line 272
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_1
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 273
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/utils/Json;->equals1:[Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v12, v13, v14

    .line 274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/utils/Json;->equals2:[Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/utils/Json;->equals1:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/utils/Json;->equals2:[Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v13

    if-eqz v13, :cond_2

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_2
    move v6, v7

    .line 281
    .end local v1    # "defaultValue":Ljava/lang/Object;
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 282
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    iget-object v14, v9, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->elementType:Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 283
    .end local v12    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 284
    .local v3, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :goto_1
    new-instance v13, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error accessing field: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v3}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 285
    .end local v3    # "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :catch_1
    move-exception v3

    .line 286
    .local v3, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 287
    throw v3

    .line 288
    .end local v3    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    :catch_2
    move-exception v10

    .line 289
    .local v10, "runtimeEx":Ljava/lang/Exception;
    :goto_3
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v3, v10}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 290
    .restart local v3    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/utils/SerializationException;->addTrace(Ljava/lang/String;)V

    .line 291
    throw v3

    .line 294
    .end local v3    # "ex":Lcom/badlogic/gdx/utils/SerializationException;
    .end local v4    # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    .end local v9    # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .end local v10    # "runtimeEx":Ljava/lang/Exception;
    :cond_4
    return-void

    .line 288
    .end local v6    # "i":I
    .restart local v4    # "field":Lcom/badlogic/gdx/utils/reflect/Field;
    .restart local v7    # "i":I
    .restart local v9    # "metadata":Lcom/badlogic/gdx/utils/Json$FieldMetadata;
    .restart local v12    # "value":Ljava/lang/Object;
    :catch_3
    move-exception v10

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_3

    .line 285
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :catch_4
    move-exception v3

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_2

    .line 283
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :catch_5
    move-exception v3

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_1
.end method

.method public writeObjectEnd()V
    .locals 2

    .prologue
    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeObjectStart()V
    .locals 2

    .prologue
    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonWriter;->object()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .param p1, "actualType"    # Ljava/lang/Class;
    .param p2, "knownType"    # Ljava/lang/Class;

    .prologue
    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonWriter;->object()Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->writeType(Ljava/lang/Class;)V

    .line 604
    :cond_1
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeObjectStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    .line 575
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeObjectStart(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actualType"    # Ljava/lang/Class;
    .param p3, "knownType"    # Ljava/lang/Class;

    .prologue
    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 585
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeType(Ljava/lang/Class;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 640
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 649
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Json;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 644
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/utils/JsonWriter;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 645
    :catch_0
    move-exception v1

    .line 646
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 417
    if-nez p1, :cond_0

    .line 418
    invoke-virtual {p0, p1, v1, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public writeValue(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "knownType"    # Ljava/lang/Class;

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 428
    return-void
.end method

.method public writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 17
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "knownType"    # Ljava/lang/Class;
    .param p3, "elementType"    # Ljava/lang/Class;

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/JsonWriter;->value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 566
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 442
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-nez v14, :cond_2

    :cond_1
    const-class v14, Ljava/lang/String;

    move-object/from16 v0, p2

    if-eq v0, v14, :cond_2

    const-class v14, Ljava/lang/Integer;

    move-object/from16 v0, p2

    if-eq v0, v14, :cond_2

    const-class v14, Ljava/lang/Boolean;

    move-object/from16 v0, p2

    if-eq v0, v14, :cond_2

    const-class v14, Ljava/lang/Float;

    move-object/from16 v0, p2

    if-eq v0, v14, :cond_2

    const-class v14, Ljava/lang/Long;

    move-object/from16 v0, p2

    if-eq v0, v14, :cond_2

    const-class v14, Ljava/lang/Double;

    move-object/from16 v0, p2

    if-eq v0, v14, :cond_2

    const-class v14, Ljava/lang/Short;

    move-object/from16 v0, p2

    if-eq v0, v14, :cond_2

    const-class v14, Ljava/lang/Byte;

    move-object/from16 v0, p2

    if-eq v0, v14, :cond_2

    const-class v14, Ljava/lang/Character;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_3

    .line 445
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/JsonWriter;->value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    .end local p1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 564
    .local v6, "ex":Ljava/io/IOException;
    new-instance v14, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v14, v6}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 449
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 451
    .local v3, "actualType":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-nez v14, :cond_4

    const-class v14, Ljava/lang/String;

    if-eq v3, v14, :cond_4

    const-class v14, Ljava/lang/Integer;

    if-eq v3, v14, :cond_4

    const-class v14, Ljava/lang/Boolean;

    if-eq v3, v14, :cond_4

    const-class v14, Ljava/lang/Float;

    if-eq v3, v14, :cond_4

    const-class v14, Ljava/lang/Long;

    if-eq v3, v14, :cond_4

    const-class v14, Ljava/lang/Double;

    if-eq v3, v14, :cond_4

    const-class v14, Ljava/lang/Short;

    if-eq v3, v14, :cond_4

    const-class v14, Ljava/lang/Byte;

    if-eq v3, v14, :cond_4

    const-class v14, Ljava/lang/Character;

    if-ne v3, v14, :cond_5

    .line 454
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 455
    const-string v14, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    goto/16 :goto_0

    .line 460
    :cond_5
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/badlogic/gdx/utils/Json$Serializable;

    if-eqz v14, :cond_6

    .line 461
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 462
    check-cast p1, Lcom/badlogic/gdx/utils/Json$Serializable;

    .end local p1    # "value":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/utils/Json$Serializable;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    goto/16 :goto_0

    .line 467
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/utils/Json;->classToSerializer:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/utils/Json$Serializer;

    .line 468
    .local v13, "serializer":Lcom/badlogic/gdx/utils/Json$Serializer;
    if-eqz v13, :cond_7

    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v13, v0, v1, v2}, Lcom/badlogic/gdx/utils/Json$Serializer;->write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 474
    :cond_7
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/badlogic/gdx/utils/Array;

    if-eqz v14, :cond_a

    .line 475
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    if-eq v3, v0, :cond_8

    const-class v14, Lcom/badlogic/gdx/utils/Array;

    if-eq v3, v14, :cond_8

    .line 476
    new-instance v14, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Serialization of an Array other than the known type is not supported.\nKnown type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\nActual type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 478
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    .line 479
    move-object/from16 v0, p1

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    move-object v4, v0

    .line 480
    .local v4, "array":Lcom/badlogic/gdx/utils/Array;
    const/4 v7, 0x0

    .local v7, "i":I
    iget v12, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v12, "n":I
    :goto_1
    if-ge v7, v12, :cond_9

    .line 481
    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v1, v15}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 480
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 482
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    goto/16 :goto_0

    .line 485
    .end local v4    # "array":Lcom/badlogic/gdx/utils/Array;
    .end local v7    # "i":I
    .end local v12    # "n":I
    :cond_a
    move-object/from16 v0, p1

    instance-of v14, v0, Ljava/util/Collection;

    if-eqz v14, :cond_f

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    if-eqz v14, :cond_d

    const-class v14, Ljava/util/ArrayList;

    if-eq v3, v14, :cond_d

    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_d

    .line 487
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 488
    const-string v14, "items"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    .line 489
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 490
    .local v9, "item":Ljava/lang/Object;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v1, v14}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_2

    .line 491
    .end local v9    # "item":Ljava/lang/Object;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    goto/16 :goto_0

    .line 494
    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    .line 495
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 496
    .restart local v9    # "item":Ljava/lang/Object;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v1, v14}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_3

    .line 497
    .end local v9    # "item":Ljava/lang/Object;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    goto/16 :goto_0

    .line 501
    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_f
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 502
    if-nez p3, :cond_10

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p3

    .line 503
    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->getLength(Ljava/lang/Object;)I

    move-result v10

    .line 504
    .local v10, "length":I
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    .line 505
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v10, :cond_11

    .line 506
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v1, v15}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 505
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 507
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    goto/16 :goto_0

    .line 512
    .end local v7    # "i":I
    .end local v10    # "length":I
    :cond_12
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v14, :cond_15

    .line 513
    if-nez p2, :cond_13

    const-class p2, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 514
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 515
    check-cast p1, Lcom/badlogic/gdx/utils/ObjectMap;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 516
    .local v5, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v15, v5, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 517
    iget-object v14, v5, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v1, v15}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_5

    .line 519
    .end local v5    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    goto/16 :goto_0

    .line 522
    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_15
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/badlogic/gdx/utils/ArrayMap;

    if-eqz v14, :cond_18

    .line 523
    if-nez p2, :cond_16

    const-class p2, Lcom/badlogic/gdx/utils/ArrayMap;

    .line 524
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 525
    move-object/from16 v0, p1

    check-cast v0, Lcom/badlogic/gdx/utils/ArrayMap;

    move-object v11, v0

    .line 526
    .local v11, "map":Lcom/badlogic/gdx/utils/ArrayMap;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    iget v12, v11, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .restart local v12    # "n":I
    :goto_6
    if-ge v7, v12, :cond_17

    .line 527
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v15, v11, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v15, v15, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 528
    iget-object v14, v11, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v14, v14, v7

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v1, v15}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 526
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 530
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    goto/16 :goto_0

    .line 533
    .end local v7    # "i":I
    .end local v11    # "map":Lcom/badlogic/gdx/utils/ArrayMap;
    .end local v12    # "n":I
    :cond_18
    move-object/from16 v0, p1

    instance-of v14, v0, Ljava/util/Map;

    if-eqz v14, :cond_1b

    .line 534
    if-nez p2, :cond_19

    const-class p2, Ljava/util/HashMap;

    .line 535
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 536
    check-cast p1, Ljava/util/Map;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 537
    .local v5, "entry":Ljava/util/Map$Entry;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 538
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v1, v15}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_7

    .line 540
    .end local v5    # "entry":Ljava/util/Map$Entry;
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    goto/16 :goto_0

    .line 545
    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1b
    const-class v14, Ljava/lang/Enum;

    invoke-static {v14, v3}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 546
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/utils/Json;->typeName:Ljava/lang/String;

    if-eqz v14, :cond_1e

    if-eqz p2, :cond_1c

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_1e

    .line 548
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_1d

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 550
    :cond_1d
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    const-string v15, "value"

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/JsonWriter;->value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    goto/16 :goto_0

    .line 555
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/Json;->convertToString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/JsonWriter;->value(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;

    goto/16 :goto_0

    .line 560
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 561
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/utils/Json;->writeFields(Ljava/lang/Object;)V

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    if-nez p2, :cond_0

    .line 381
    invoke-virtual {p0, p2, v2, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 384
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 383
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p2, v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "knownType"    # Ljava/lang/Class;

    .prologue
    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 398
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "knownType"    # Ljava/lang/Class;
    .param p4, "elementType"    # Ljava/lang/Class;

    .prologue
    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Json;->writer:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/JsonWriter;->name(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    invoke-virtual {p0, p2, p3, p4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 412
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
