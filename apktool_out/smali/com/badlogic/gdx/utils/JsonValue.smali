.class public Lcom/badlogic/gdx/utils/JsonValue;
.super Ljava/lang/Object;
.source "JsonValue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/JsonValue$1;,
        Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;,
        Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;,
        Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/utils/JsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field public child:Lcom/badlogic/gdx/utils/JsonValue;

.field private doubleValue:D

.field private longValue:J

.field public name:Ljava/lang/String;

.field public next:Lcom/badlogic/gdx/utils/JsonValue;

.field public prev:Lcom/badlogic/gdx/utils/JsonValue;

.field public size:I

.field private stringValue:Ljava/lang/String;

.field private type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->set(DLjava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(DLjava/lang/String;)V
    .locals 1
    .param p1, "value"    # D
    .param p3, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->set(DLjava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->set(JLjava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "value"    # J
    .param p3, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->set(JLjava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V
    .locals 0
    .param p1, "type"    # Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->set(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->set(Z)V

    .line 75
    return-void
.end method

.method private static indent(ILcom/badlogic/gdx/utils/StringBuilder;)V
    .locals 2
    .param p0, "count"    # I
    .param p1, "buffer"    # Lcom/badlogic/gdx/utils/StringBuilder;

    .prologue
    .line 1010
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1011
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1010
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1012
    :cond_0
    return-void
.end method

.method private static isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z
    .locals 2
    .param p0, "object"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 998
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v0, :cond_2

    .line 999
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1000
    :goto_1
    return v1

    .line 998
    :cond_1
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 1000
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isNumeric(Lcom/badlogic/gdx/utils/JsonValue;)Z
    .locals 2
    .param p0, "object"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v0, :cond_1

    .line 1005
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNumber()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1006
    :goto_1
    return v1

    .line 1004
    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 1006
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V
    .locals 15
    .param p1, "object"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p2, "buffer"    # Lcom/badlogic/gdx/utils/StringBuilder;
    .param p3, "indent"    # I
    .param p4, "settings"    # Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    .prologue
    .line 926
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 927
    .local v9, "outputType":Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 928
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v12, :cond_0

    .line 929
    const-string v12, "{}"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 995
    :goto_0
    return-void

    .line 931
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v8, 0x1

    .line 932
    .local v8, "newLines":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v10

    .line 935
    .local v10, "start":I
    :goto_2
    if-eqz v8, :cond_5

    const-string v12, "{\n"

    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 936
    const/4 v3, 0x0

    .line 937
    .local v3, "i":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_4
    if-eqz v2, :cond_8

    .line 938
    if-eqz v8, :cond_1

    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    .line 939
    :cond_1
    iget-object v12, v2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 940
    const-string v12, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 941
    add-int/lit8 v12, p3, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v2, v0, v12, v1}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 942
    if-eqz v8, :cond_2

    sget-object v12, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v9, v12, :cond_3

    :cond_2
    iget-object v12, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v12, :cond_3

    const/16 v12, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 943
    :cond_3
    if-eqz v8, :cond_6

    const/16 v12, 0xa

    :goto_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 944
    if-nez v8, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v12

    sub-int/2addr v12, v10

    move-object/from16 v0, p4

    iget v13, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    if-le v12, v13, :cond_7

    .line 945
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 946
    const/4 v8, 0x1

    .line 947
    goto :goto_2

    .line 931
    .end local v2    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v3    # "i":I
    .end local v8    # "newLines":Z
    .end local v10    # "start":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 935
    .restart local v8    # "newLines":Z
    .restart local v10    # "start":I
    :cond_5
    const-string v12, "{ "

    goto :goto_3

    .line 943
    .restart local v2    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .restart local v3    # "i":I
    :cond_6
    const/16 v12, 0x20

    goto :goto_5

    .line 937
    :cond_7
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_4

    .line 952
    :cond_8
    if-eqz v8, :cond_9

    add-int/lit8 v12, p3, -0x1

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    .line 953
    :cond_9
    const/16 v12, 0x7d

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    .line 955
    .end local v2    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v3    # "i":I
    .end local v8    # "newLines":Z
    .end local v10    # "start":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v12

    if-eqz v12, :cond_17

    .line 956
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v12, :cond_b

    .line 957
    const-string v12, "[]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    .line 959
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v12

    if-nez v12, :cond_10

    const/4 v8, 0x1

    .line 960
    .restart local v8    # "newLines":Z
    :goto_6
    move-object/from16 v0, p4

    iget-boolean v12, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->wrapNumericArrays:Z

    if-nez v12, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNumeric(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v12

    if-nez v12, :cond_11

    :cond_c
    const/4 v11, 0x1

    .line 961
    .local v11, "wrap":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v10

    .line 964
    .restart local v10    # "start":I
    :goto_8
    if-eqz v8, :cond_12

    const-string v12, "[\n"

    :goto_9
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 965
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v2    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_a
    if-eqz v2, :cond_15

    .line 966
    if-eqz v8, :cond_d

    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    .line 967
    :cond_d
    add-int/lit8 v12, p3, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v2, v0, v12, v1}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 968
    if-eqz v8, :cond_e

    sget-object v12, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v9, v12, :cond_f

    :cond_e
    iget-object v12, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v12, :cond_f

    const/16 v12, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 969
    :cond_f
    if-eqz v8, :cond_13

    const/16 v12, 0xa

    :goto_b
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 970
    if-eqz v11, :cond_14

    if-nez v8, :cond_14

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v12

    sub-int/2addr v12, v10

    move-object/from16 v0, p4

    iget v13, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    if-le v12, v13, :cond_14

    .line 971
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 972
    const/4 v8, 0x1

    .line 973
    goto :goto_8

    .line 959
    .end local v2    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v8    # "newLines":Z
    .end local v10    # "start":I
    .end local v11    # "wrap":Z
    :cond_10
    const/4 v8, 0x0

    goto :goto_6

    .line 960
    .restart local v8    # "newLines":Z
    :cond_11
    const/4 v11, 0x0

    goto :goto_7

    .line 964
    .restart local v10    # "start":I
    .restart local v11    # "wrap":Z
    :cond_12
    const-string v12, "[ "

    goto :goto_9

    .line 969
    .restart local v2    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_13
    const/16 v12, 0x20

    goto :goto_b

    .line 965
    :cond_14
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_a

    .line 978
    :cond_15
    if-eqz v8, :cond_16

    add-int/lit8 v12, p3, -0x1

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    .line 979
    :cond_16
    const/16 v12, 0x5d

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    .line 981
    .end local v2    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v8    # "newLines":Z
    .end local v10    # "start":I
    .end local v11    # "wrap":Z
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 982
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    .line 983
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 984
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v4

    .line 985
    .local v4, "doubleValue":D
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v6

    .line 986
    .local v6, "longValue":J
    long-to-double v12, v6

    cmpl-double v12, v4, v12

    if-nez v12, :cond_19

    long-to-double v4, v6

    .end local v4    # "doubleValue":D
    :cond_19
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    .line 987
    .end local v6    # "longValue":J
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 988
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    .line 989
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 990
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    .line 991
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 992
    const-string v12, "null"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    .line 994
    :cond_1d
    new-instance v12, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown object type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v12
.end method


# virtual methods
.method public asBoolean()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 251
    sget-object v2, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 261
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to boolean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 255
    :pswitch_1
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 257
    :pswitch_2
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 259
    :pswitch_3
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asBooleanArray()[Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 463
    iget-object v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v7, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v6, v7, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value is not an array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 464
    :cond_0
    iget v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v6, [Z

    .line 465
    .local v0, "array":[Z
    const/4 v1, 0x0

    .line 466
    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v3, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v3, :cond_4

    .line 468
    sget-object v6, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v7, v3, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 482
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value cannot be converted to boolean: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 470
    :pswitch_0
    iget-object v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 484
    .local v2, "v":Z
    :goto_1
    aput-boolean v2, v0, v1

    .line 466
    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v2    # "v":Z
    :pswitch_1
    iget-wide v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    move v2, v4

    .line 474
    .restart local v2    # "v":Z
    :goto_2
    goto :goto_1

    .end local v2    # "v":Z
    :cond_1
    move v2, v5

    .line 473
    goto :goto_2

    .line 476
    :pswitch_2
    iget-wide v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_2

    move v2, v4

    .line 477
    .restart local v2    # "v":Z
    :goto_3
    goto :goto_1

    .end local v2    # "v":Z
    :cond_2
    move v2, v5

    .line 476
    goto :goto_3

    .line 479
    :pswitch_3
    iget-wide v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_3

    move v2, v4

    .line 480
    .restart local v2    # "v":Z
    :goto_4
    goto :goto_1

    .end local v2    # "v":Z
    :cond_3
    move v2, v5

    .line 479
    goto :goto_4

    .line 486
    :cond_4
    return-object v0

    .line 468
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asByte()B
    .locals 4

    .prologue
    .line 267
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    .line 275
    :goto_0
    return v0

    .line 271
    :pswitch_1
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-byte v0, v0

    goto :goto_0

    .line 273
    :pswitch_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v0, v0

    int-to-byte v0, v0

    goto :goto_0

    .line 275
    :pswitch_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asByteArray()[B
    .locals 8

    .prologue
    .line 492
    iget-object v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v5, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value is not an array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 493
    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v4, [B

    .line 494
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 495
    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v3, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v3, :cond_2

    .line 497
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v3, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 511
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value cannot be converted to byte: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 499
    :pswitch_0
    iget-object v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    .line 513
    .local v2, "v":B
    :goto_1
    aput-byte v2, v0, v1

    .line 495
    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v2    # "v":B
    :pswitch_1
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v4, v4

    int-to-byte v2, v4

    .line 503
    .restart local v2    # "v":B
    goto :goto_1

    .line 505
    .end local v2    # "v":B
    :pswitch_2
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v4, v4

    int-to-byte v2, v4

    .line 506
    .restart local v2    # "v":B
    goto :goto_1

    .line 508
    .end local v2    # "v":B
    :pswitch_3
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 509
    .restart local v2    # "v":B
    :goto_2
    goto :goto_1

    .line 508
    .end local v2    # "v":B
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 515
    :cond_2
    return-object v0

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asChar()C
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 299
    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to char: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :pswitch_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 303
    :pswitch_1
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-char v0, v0

    goto :goto_0

    .line 305
    :pswitch_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v0, v0

    int-to-char v0, v0

    goto :goto_0

    .line 307
    :pswitch_3
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asCharArray()[C
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 550
    iget-object v5, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v6, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v5, v6, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value is not an array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 551
    :cond_0
    iget v5, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v5, [C

    .line 552
    .local v0, "array":[C
    const/4 v1, 0x0

    .line 553
    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v3, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v3, :cond_3

    .line 555
    sget-object v5, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 569
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value cannot be converted to char: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 557
    :pswitch_0
    iget-object v5, v3, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 571
    .local v2, "v":C
    :goto_1
    aput-char v2, v0, v1

    .line 553
    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    .end local v2    # "v":C
    :cond_1
    iget-object v5, v3, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    .line 560
    :pswitch_1
    iget-wide v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v5, v6

    int-to-char v2, v5

    .line 561
    .restart local v2    # "v":C
    goto :goto_1

    .line 563
    .end local v2    # "v":C
    :pswitch_2
    iget-wide v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v5, v6

    int-to-char v2, v5

    .line 564
    .restart local v2    # "v":C
    goto :goto_1

    .line 566
    .end local v2    # "v":C
    :pswitch_3
    iget-wide v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    .line 567
    .restart local v2    # "v":C
    :goto_2
    goto :goto_1

    .end local v2    # "v":C
    :cond_2
    move v2, v4

    .line 566
    goto :goto_2

    .line 573
    :cond_3
    return-object v0

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asDouble()D
    .locals 4

    .prologue
    .line 203
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to double: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 211
    :goto_0
    return-wide v0

    .line 207
    :pswitch_1
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    goto :goto_0

    .line 209
    :pswitch_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-double v0, v0

    goto :goto_0

    .line 211
    :pswitch_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asDoubleArray()[D
    .locals 10

    .prologue
    .line 376
    iget-object v5, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v6, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v5, v6, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Value is not an array: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 377
    :cond_0
    iget v5, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v5, [D

    .line 378
    .local v0, "array":[D
    const/4 v1, 0x0

    .line 379
    .local v1, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v4, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v4, :cond_2

    .line 381
    sget-object v5, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v6, v4, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 395
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Value cannot be converted to double: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 383
    :pswitch_0
    iget-object v5, v4, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 397
    .local v2, "v":D
    :goto_1
    aput-wide v2, v0, v1

    .line 379
    iget-object v4, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v2    # "v":D
    :pswitch_1
    iget-wide v2, v4, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    .line 387
    .restart local v2    # "v":D
    goto :goto_1

    .line 389
    .end local v2    # "v":D
    :pswitch_2
    iget-wide v6, v4, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-double v2, v6

    .line 390
    .restart local v2    # "v":D
    goto :goto_1

    .line 392
    .end local v2    # "v":D
    :pswitch_3
    iget-wide v6, v4, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 393
    .restart local v2    # "v":D
    :goto_2
    goto :goto_1

    .line 392
    .end local v2    # "v":D
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 399
    :cond_2
    return-object v0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asFloat()F
    .locals 4

    .prologue
    .line 187
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to float: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 191
    :pswitch_1
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-float v0, v0

    goto :goto_0

    .line 193
    :pswitch_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-float v0, v0

    goto :goto_0

    .line 195
    :pswitch_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asFloatArray()[F
    .locals 8

    .prologue
    .line 347
    iget-object v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v5, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value is not an array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 348
    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v4, [F

    .line 349
    .local v0, "array":[F
    const/4 v1, 0x0

    .line 350
    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v3, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v3, :cond_2

    .line 352
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v3, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 366
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value cannot be converted to float: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 354
    :pswitch_0
    iget-object v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 368
    .local v2, "v":F
    :goto_1
    aput v2, v0, v1

    .line 350
    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v2    # "v":F
    :pswitch_1
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-float v2, v4

    .line 358
    .restart local v2    # "v":F
    goto :goto_1

    .line 360
    .end local v2    # "v":F
    :pswitch_2
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-float v2, v4

    .line 361
    .restart local v2    # "v":F
    goto :goto_1

    .line 363
    .end local v2    # "v":F
    :pswitch_3
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 364
    .restart local v2    # "v":F
    :goto_2
    goto :goto_1

    .line 363
    .end local v2    # "v":F
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 370
    :cond_2
    return-object v0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asInt()I
    .locals 4

    .prologue
    .line 235
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 245
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 243
    :goto_0
    return v0

    .line 239
    :pswitch_1
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    goto :goto_0

    .line 241
    :pswitch_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v0, v0

    goto :goto_0

    .line 243
    :pswitch_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asIntArray()[I
    .locals 8

    .prologue
    .line 434
    iget-object v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v5, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value is not an array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 435
    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v4, [I

    .line 436
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 437
    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v3, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v3, :cond_2

    .line 439
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v3, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 453
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value cannot be converted to int: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 441
    :pswitch_0
    iget-object v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 455
    .local v2, "v":I
    :goto_1
    aput v2, v0, v1

    .line 437
    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v2    # "v":I
    :pswitch_1
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v2, v4

    .line 445
    .restart local v2    # "v":I
    goto :goto_1

    .line 447
    .end local v2    # "v":I
    :pswitch_2
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v2, v4

    .line 448
    .restart local v2    # "v":I
    goto :goto_1

    .line 450
    .end local v2    # "v":I
    :pswitch_3
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 451
    .restart local v2    # "v":I
    :goto_2
    goto :goto_1

    .line 450
    .end local v2    # "v":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 457
    :cond_2
    return-object v0

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asLong()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 219
    sget-object v2, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 227
    :cond_0
    :goto_0
    return-wide v0

    .line 223
    :pswitch_1
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-long v0, v0

    goto :goto_0

    .line 225
    :pswitch_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    goto :goto_0

    .line 227
    :pswitch_3
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asLongArray()[J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .line 405
    iget-object v5, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v8, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v5, v8, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Value is not an array: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 406
    :cond_0
    iget v5, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v5, [J

    .line 407
    .local v0, "array":[J
    const/4 v1, 0x0

    .line 408
    .local v1, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v4, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v4, :cond_2

    .line 410
    sget-object v5, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v8, v4, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 424
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Value cannot be converted to long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 412
    :pswitch_0
    iget-object v5, v4, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 426
    .local v2, "v":J
    :goto_1
    aput-wide v2, v0, v1

    .line 408
    iget-object v4, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    .end local v2    # "v":J
    :pswitch_1
    iget-wide v8, v4, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-long v2, v8

    .line 416
    .restart local v2    # "v":J
    goto :goto_1

    .line 418
    .end local v2    # "v":J
    :pswitch_2
    iget-wide v2, v4, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 419
    .restart local v2    # "v":J
    goto :goto_1

    .line 421
    .end local v2    # "v":J
    :pswitch_3
    iget-wide v8, v4, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_1

    const-wide/16 v2, 0x1

    .line 422
    .restart local v2    # "v":J
    :goto_2
    goto :goto_1

    .end local v2    # "v":J
    :cond_1
    move-wide v2, v6

    .line 421
    goto :goto_2

    .line 428
    :cond_2
    return-object v0

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asShort()S
    .locals 4

    .prologue
    .line 283
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 293
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to short: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    .line 291
    :goto_0
    return v0

    .line 287
    :pswitch_1
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-short v0, v0

    goto :goto_0

    .line 289
    :pswitch_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v0, v0

    int-to-short v0, v0

    goto :goto_0

    .line 291
    :pswitch_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asShortArray()[S
    .locals 8

    .prologue
    .line 521
    iget-object v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v5, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value is not an array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 522
    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v4, [S

    .line 523
    .local v0, "array":[S
    const/4 v1, 0x0

    .line 524
    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v3, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v3, :cond_2

    .line 526
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v3, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 540
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value cannot be converted to short: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 528
    :pswitch_0
    iget-object v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 542
    .local v2, "v":S
    :goto_1
    aput-short v2, v0, v1

    .line 524
    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    .end local v2    # "v":S
    :pswitch_1
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v4, v4

    int-to-short v2, v4

    .line 532
    .restart local v2    # "v":S
    goto :goto_1

    .line 534
    .end local v2    # "v":S
    :pswitch_2
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v4, v4

    int-to-short v2, v4

    .line 535
    .restart local v2    # "v":S
    goto :goto_1

    .line 537
    .end local v2    # "v":S
    :pswitch_3
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 538
    .restart local v2    # "v":S
    :goto_2
    goto :goto_1

    .line 537
    .end local v2    # "v":S
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 544
    :cond_2
    return-object v0

    .line 526
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public asString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 169
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 179
    :goto_0
    return-object v0

    .line 173
    :pswitch_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :pswitch_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-string v0, "true"

    goto :goto_0

    :cond_2
    const-string v0, "false"

    goto :goto_0

    .line 179
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public asStringArray()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 315
    iget-object v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v5, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value is not an array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 316
    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v4, [Ljava/lang/String;

    .line 317
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 318
    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v3, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v3, :cond_4

    .line 320
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v3, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 337
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value cannot be converted to string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 322
    :pswitch_0
    iget-object v2, v3, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 339
    .local v2, "v":Ljava/lang/String;
    :goto_1
    aput-object v2, v0, v1

    .line 318
    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v2    # "v":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 326
    .restart local v2    # "v":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 325
    .end local v2    # "v":Ljava/lang/String;
    :cond_1
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 328
    :pswitch_2
    iget-object v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 329
    .restart local v2    # "v":Ljava/lang/String;
    :goto_3
    goto :goto_1

    .line 328
    .end local v2    # "v":Ljava/lang/String;
    :cond_2
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 331
    :pswitch_3
    iget-wide v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    const-string v2, "true"

    .line 332
    .restart local v2    # "v":Ljava/lang/String;
    :goto_4
    goto :goto_1

    .line 331
    .end local v2    # "v":Ljava/lang/String;
    :cond_3
    const-string v2, "false"

    goto :goto_4

    .line 334
    :pswitch_4
    const/4 v2, 0x0

    .line 335
    .restart local v2    # "v":Ljava/lang/String;
    goto :goto_1

    .line 341
    .end local v2    # "v":Ljava/lang/String;
    :cond_4
    return-object v0

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public child()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public get(I)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 82
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 83
    add-int/lit8 p1, p1, -0x1

    .line 84
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 86
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 93
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 95
    :cond_0
    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 758
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 759
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    return v1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 686
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 687
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 688
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    return v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 622
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-nez v1, :cond_1

    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p2

    goto :goto_0
.end method

.method public getByte(I)B
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 767
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 768
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result v1

    return v1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 695
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 696
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result v1

    return v1
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 628
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-nez v1, :cond_1

    .end local p2    # "defaultValue":B
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultValue":B
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result p2

    goto :goto_0
.end method

.method public getChar(I)C
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 783
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 784
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result v1

    return v1
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 710
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 711
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 712
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result v1

    return v1
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 640
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-nez v1, :cond_1

    .end local p2    # "defaultValue":C
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultValue":C
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result p2

    goto :goto_0
.end method

.method public getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 585
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 734
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 735
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 736
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v2

    return-wide v2
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 662
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 663
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 664
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v2

    return-wide v2
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 604
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-nez v1, :cond_1

    .end local p2    # "defaultValue":D
    :cond_0
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":D
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide p2

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 726
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 727
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 728
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    return v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 654
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 655
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 656
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    return v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 597
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 598
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-nez v1, :cond_1

    .end local p2    # "defaultValue":F
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultValue":F
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result p2

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 750
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 751
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 752
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    return v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 678
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 679
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 680
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    return v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 616
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-nez v1, :cond_1

    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result p2

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 743
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 744
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 670
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 671
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 672
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 609
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 610
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-nez v1, :cond_1

    .end local p2    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide p2

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 774
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 775
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 776
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result v1

    return v1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 702
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 703
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 704
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result v1

    return v1
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 634
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-nez v1, :cond_1

    .end local p2    # "defaultValue":S
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultValue":S
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result p2

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 718
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 719
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 720
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 647
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 592
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isArray()Z
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBoolean()Z
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDouble()Z
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLong()Z
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull()Z
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumber()Z
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isObject()Z
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isString()Z
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValue()Z
    .locals 2

    .prologue
    .line 831
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 839
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 837
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 831
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;
    .locals 1

    .prologue
    .line 1019
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .locals 2
    .param p1, "settings"    # Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    .prologue
    .line 920
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 921
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 922
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;
    .locals 2
    .param p1, "outputType"    # Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    .param p2, "singleLineColumns"    # I

    .prologue
    .line 913
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;-><init>()V

    .line 914
    .local v0, "settings":Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;
    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 915
    iput p2, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    .line 916
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public prev()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public remove(I)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 131
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 140
    .end local v0    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    return-object v0

    .line 132
    .restart local v0    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v2, :cond_2

    .line 133
    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 134
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, v2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 139
    :cond_1
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 137
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 147
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 156
    .end local v0    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    return-object v0

    .line 148
    .restart local v0    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v2, :cond_2

    .line 149
    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 150
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, v2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 155
    :cond_1
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 153
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1
.end method

.method public require(I)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 108
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 109
    add-int/lit8 p1, p1, -0x1

    .line 110
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 112
    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child not found with index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_1
    return-object v0
.end method

.method public require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 120
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 122
    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child not found with name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_1
    return-object v0
.end method

.method public set(DLjava/lang/String;)V
    .locals 3
    .param p1, "value"    # D
    .param p3, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 886
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    .line 887
    double-to-long v0, p1

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 888
    iput-object p3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 889
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 890
    return-void
.end method

.method public set(JLjava/lang/String;)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 894
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 895
    long-to-double v0, p1

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    .line 896
    iput-object p3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 897
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 898
    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 880
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 881
    if-nez p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 882
    return-void

    .line 881
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    goto :goto_0
.end method

.method public set(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 901
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    iput-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 902
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 903
    return-void

    .line 901
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 849
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    .line 850
    return-void
.end method

.method public setNext(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .param p1, "next"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 865
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 866
    return-void
.end method

.method public setPrev(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .param p1, "prev"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 875
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 876
    return-void
.end method

.method public setType(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V
    .locals 2
    .param p1, "type"    # Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .prologue
    .line 792
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 794
    return-void
.end method

.method public size()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v0

    .line 909
    :goto_0
    return-object v0

    .line 907
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 909
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public type()Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-object v0
.end method
