.class Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;
.super Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;
.source "Skin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getJsonLoader(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field final synthetic val$skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->val$skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;-><init>()V

    return-void
.end method

.method private readNamedObjects(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 7
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "valueMap"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 423
    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$TintedDrawable;

    if-ne p2, v4, :cond_0

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 424
    .local v0, "addType":Ljava/lang/Class;
    :goto_0
    iget-object v3, p3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v3, "valueEntry":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_1
    if-eqz v3, :cond_2

    .line 425
    invoke-virtual {p1, p2, v3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v2

    .line 426
    .local v2, "object":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 424
    :goto_2
    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1

    .end local v0    # "addType":Ljava/lang/Class;
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "valueEntry":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_0
    move-object v0, p2

    .line 423
    goto :goto_0

    .line 428
    .restart local v0    # "addType":Ljava/lang/Class;
    .restart local v2    # "object":Ljava/lang/Object;
    .restart local v3    # "valueEntry":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 434
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "object":Ljava/lang/Object;
    :cond_2
    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 3
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "typeToValueMap"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "ignored"    # Ljava/lang/Class;

    .prologue
    .line 412
    iget-object v1, p2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v1, "valueMap":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v1, :cond_0

    .line 414
    :try_start_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->readNamedObjects(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 419
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/reflect/ReflectionException;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->val$skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v2
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "x1"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "x2"    # Ljava/lang/Class;

    .prologue
    .line 410
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v0

    return-object v0
.end method
