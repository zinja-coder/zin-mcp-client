.class Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;
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
        "Lcom/badlogic/gdx/graphics/Color;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Lcom/badlogic/gdx/graphics/Color;
    .locals 9
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "type"    # Ljava/lang/Class;

    .prologue
    const/4 v8, 0x0

    .line 474
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Color;

    .line 481
    :goto_0
    return-object v5

    .line 475
    :cond_0
    const-string v6, "hex"

    const-class v7, Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v5, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 476
    .local v3, "hex":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    goto :goto_0

    .line 477
    :cond_1
    const-string v5, "r"

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 478
    .local v4, "r":F
    const-string v5, "g"

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 479
    .local v2, "g":F
    const-string v5, "b"

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 480
    .local v1, "b":F
    const-string v5, "a"

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 481
    .local v0, "a":F
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v4, v2, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "x1"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "x2"    # Ljava/lang/Class;

    .prologue
    .line 472
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method
