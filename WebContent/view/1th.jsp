<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ page import ="library.model.Seat" %>
<%
	List list = (List)request.getAttribute("seat");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#content td').css('cursor', 'pointer');
		
		$('#content td').click( function() {
			$(location).attr('href', 'library.library?cmd=1seat-input&num=1&seat='+$(this).text());
		});
		
		for ( var i = 0 ; i < $('#seatNum').val() ; i++)
		{
			$('#'+$('#seat').find('input:eq('+i+')').val()).css('background-color', 'rgb(255, 204, 0)');
			$('#'+$('#seat').find('input:eq('+i+')').val()).css('cursor', 'default');
		}
		$(opener.location).attr('href','library.library?cmd=study');
	});
</script>
</head>
<body>
<% if(list != null) { %>
<input type='hidden' id='seatNum' value = '<%= list.size() %>'/>
<div id='seat'>
<% for (int i = 0 ; i < list.size() ; i++) {
		Seat seat = (Seat)list.get(i);
%>
	<input type='hidden' value = '<%= seat.getSeatNum() %>'/>
<% } } %>
</div>
<!-- <body onload="javascript:Check-Seat()"> -->

<table width="500" border="0" cellspacing="0" cellpadding="2">
      	<br/>
      	<td>
      	 &nbsp; &nbsp;<img src="/web_project/images/1열람실좌석.PNG">
      	</td>
</table>
      	
<table id="content" width="645" border="0" cellspacing="0" cellpadding="0" background="../images/service/seat-no-1.gif">
  <tbody><tr>
    <td width="37" height="67" align="center"></td>
    <td width="44" height="67" align="center"></td>
    <td width="47" height="67" align="center"></td>
    <td width="48" height="67" align="center"></td>
    <td width="47" height="67" align="center"></td>
    <td width="48" height="67" align="center"></td>
    <td width="44" height="67" align="center"></td>
    <td width="27" height="67" align="center"></td>
    <td width="46" height="67" align="center"></td>
    <td width="47" height="67" align="center"></td>
    <td width="48" height="67" align="center"></td>
    <td width="48" height="67" align="center"></td>
    <td width="47" height="67" align="center"></td>
    <td width="46" height="67" align="center"></td>
    <td width="21" height="67" align="center"></td>
  </tr>
  <tr>
    <td width="37" height="35" align="center"></td>
    <td width="44" height="35" align="center" id="1-1">1</td>
    <td width="47" height="35" align="center" id="1-2">2</td>
    <td width="48" height="35" align="center" id="1-3">3</td>
    <td width="47" height="35" align="center" id="1-4">4</td>
    <td width="48" height="35" align="center" id="1-5">5</td>
    <td width="44" height="35" align="center" id="1-6">6</td>
    <td width="27" height="35" align="center"></td>
    <td width="46" height="35" align="center" id="1-49">49</td>
    <td width="47" height="35" align="center" id="1-50">50</td>
    <td width="48" height="35" align="center" id="1-51">51</td>
    <td width="48" height="35" align="center" id="1-52">52</td>
    <td width="47" height="35" align="center" id="1-53">53</td>
    <td width="46" height="35" align="center" id="1-54">54</td>
    <td width="21" height="35" align="center"></td>
  </tr>
  <tr>
    <td width="37" height="34" align="center"></td>
    <td width="44" height="34" align="center" id="1-12">12</td>
    <td width="47" height="34" align="center" id="1-11">11</td>
    <td width="48" height="34" align="center" id="1-10">10</td>
    <td width="47" height="34" align="center" id="1-9">9</td>
    <td width="48" height="34" align="center" id="1-8">8</td>
    <td width="44" height="34" align="center" id="1-7">7</td>
    <td width="27" height="34" align="center"></td>
    <td width="46" height="34" align="center" id="1-60">60</td>
    <td width="47" height="34" align="center" id="1-59">59</td>
    <td width="48" height="34" align="center" id="1-58">58</td>
    <td width="48" height="34" align="center" id="1-57">57</td>
    <td width="47" height="34" align="center" id="1-56">56</td>
    <td width="46" height="34" align="center" id="1-55">55</td>
    <td width="21" height="34" align="center"></td>
  </tr>
  <tr>
    <td width="37" height="18" align="center"></td>
    <td width="44" height="18" align="center"></td>
    <td width="47" height="18" align="center"></td>
    <td width="48" height="18" align="center"></td>
    <td width="47" height="18" align="center"></td>
    <td width="48" height="18" align="center"></td>
    <td width="44" height="18" align="center"></td>
    <td width="27" height="18" align="center"></td>
    <td width="46" height="18" align="center"></td>
    <td width="47" height="18" align="center"></td>
    <td width="48" height="18" align="center"></td>
    <td width="48" height="18" align="center"></td>
    <td width="47" height="18" align="center"></td>
    <td width="46" height="18" align="center"></td>
    <td width="21" height="18" align="center"></td>
  </tr>
  <tr>
    <td width="37" height="36" align="center"></td>
    <td width="44" height="36" align="center" id="1-13">13</td>
    <td width="47" height="36" align="center" id="1-14">14</td>
    <td width="48" height="36" align="center" id="1-15">15</td>
    <td width="47" height="36" align="center" id="1-16">16</td>
    <td width="48" height="36" align="center" id="1-17">17</td>
    <td width="44" height="36" align="center" id="1-18">18</td>
    <td width="27" height="36" align="center"></td>
    <td width="46" height="36" align="center" id="1-61">61</td>
    <td width="47" height="36" align="center" id="1-62">62</td>
    <td width="48" height="36" align="center" id="1-63">63</td>
    <td width="48" height="36" align="center" id="1-64">64</td>
    <td width="47" height="36" align="center" id="1-65">65</td>
    <td width="46" height="36" align="center" id="1-66">66</td>
    <td width="21" height="36" align="center"></td>
  </tr>
  <tr>
    <td width="37" height="34" align="center"></td>
    <td width="44" height="34" align="center" id="1-24">24</td>
    <td width="47" height="34" align="center" id="1-23">23</td>
    <td width="48" height="34" align="center" id="1-22">22</td>
    <td width="47" height="34" align="center" id="1-21">21</td>
    <td width="48" height="34" align="center" id="1-20">20</td>
    <td width="44" height="34" align="center" id="1-19">19</td>
    <td width="27" height="34" align="center"></td>
    <td width="46" height="34" align="center" id="1-72">72</td>
    <td width="47" height="34" align="center" id="1-71">71</td>
    <td width="48" height="34" align="center" id="1-70">70</td>
    <td width="48" height="34" align="center" id="1-69">69</td>
    <td width="47" height="34" align="center" id="1-68">68</td>
    <td width="46" height="34" align="center" id="1-67">67</td>
    <td width="21" height="34" align="center"></td>
  </tr>
  <tr>
    <td width="37" height="19" align="center"></td>
    <td width="44" height="19" align="center"></td>
    <td width="47" height="19" align="center"></td>
    <td width="48" height="19" align="center"></td>
    <td width="47" height="19" align="center"></td>
    <td width="48" height="19" align="center"></td>
    <td width="44" height="19" align="center"></td>
    <td width="27" height="19" align="center"></td>
    <td width="46" height="19" align="center"></td>
    <td width="47" height="19" align="center"></td>
    <td width="48" height="19" align="center"></td>
    <td width="48" height="19" align="center"></td>
    <td width="47" height="19" align="center"></td>
    <td width="46" height="19" align="center"></td>
    <td width="21" height="19" align="center"></td>
  </tr>
  <tr>
    <td width="37" height="35" align="center"></td>
    <td width="44" height="35" align="center" id="1-25">25</td>
    <td width="47" height="35" align="center" id="1-26">26</td>
    <td width="48" height="35" align="center" id="1-27">27</td>
    <td width="47" height="35" align="center" id="1-28">28</td>
    <td width="48" height="35" align="center" id="1-29">29</td>
    <td width="44" height="35" align="center" id="1-30">30</td>
    <td width="27" height="35" align="center"></td>
    <td width="46" height="35" align="center" id="1-73">73</td>
    <td width="47" height="35" align="center" id="1-74">74</td>
    <td width="48" height="35" align="center" id="1-75">75</td>
    <td width="48" height="35" align="center" id="1-76">76</td>
    <td width="47" height="35" align="center" id="1-77">77</td>
    <td width="46" height="35" align="center" id="1-78">78</td>
    <td width="21" height="35" align="center"></td>
  </tr>
  <tr>
    <td width="37" height="35" align="center"></td>
    <td width="44" height="35" align="center" id="1-36">36</td>
    <td width="47" height="35" align="center" id="1-35">35</td>
    <td width="48" height="35" align="center" id="1-34">34</td>
    <td width="47" height="35" align="center" id="1-33">33</td>
    <td width="48" height="35" align="center" id="1-32">32</td>
    <td width="44" height="35" align="center" id="1-31">31</td>
    <td width="27" height="35" align="center"></td>
    <td width="46" height="35" align="center" id="1-84">84</td>
    <td width="47" height="35" align="center" id="1-83">83</td>
    <td width="48" height="35" align="center" id="1-82">82</td>
    <td width="48" height="35" align="center" id="1-81">81</td>
    <td width="47" height="35" align="center" id="1-80">80</td>
    <td width="46" height="35" align="center" id="1-79">79</td>
    <td width="21" height="35" align="center"></td>
  </tr>
  <tr>
    <td width="37" height="19" align="center"></td>
    <td width="44" height="19" align="center"></td>
    <td width="47" height="19" align="center"></td>
    <td width="48" height="19" align="center"></td>
    <td width="47" height="19" align="center"></td>
    <td width="48" height="19" align="center"></td>
    <td width="44" height="19" align="center"></td>
    <td width="27" height="19" align="center"></td>
    <td width="46" height="19" align="center"></td>
    <td width="47" height="19" align="center"></td>
    <td width="48" height="19" align="center"></td>
    <td width="48" height="19" align="center"></td>
    <td width="47" height="19" align="center"></td>
    <td width="46" height="19" align="center"></td>
    <td width="21" height="19" align="center"></td>
  </tr>
  <tr>
    <td width="37" height="34" align="center"></td>
    <td width="44" height="34" align="center" id="1-37">37</td>
    <td width="47" height="34" align="center" id="1-38">38</td>
    <td width="48" height="34" align="center" id="1-39">39</td>
    <td width="47" height="34" align="center" id="1-40">40</td>
    <td width="48" height="34" align="center" id="1-41">41</td>
    <td width="44" height="34" align="center" id="1-42">42</td>
    <td width="27" height="34" align="center"></td>
    <td width="46" height="34" align="center"></td>
    <td width="47" height="34" align="center"></td>
    <td width="48" height="34" align="center"></td>
    <td width="48" height="34" align="center" id="1-85">85</td>
    <td width="47" height="34" align="center" id="1-86">86</td>
    <td width="46" height="34" align="center" id="1-87">87</td>
    <td width="21" height="34" align="center"></td>
  </tr>
  <tr>
    <td width="37" height="35" align="center"></td>
    <td width="44" height="35" align="center" id="1-48">48</td>
    <td width="47" height="35" align="center" id="1-47">47</td>
    <td width="48" height="35" align="center" id="1-46">46</td>
    <td width="47" height="35" align="center" id="1-45">45</td>
    <td width="48" height="35" align="center" id="1-44">44</td>
    <td width="44" height="35" align="center" id="1-43">43</td>
    <td width="27" height="35" align="center"></td>
    <td width="46" height="35" align="center"></td>
    <td width="47" height="35" align="center"></td>
    <td width="48" height="35" align="center"></td>
    <td width="48" height="35" align="center" id="1-90">90</td>
    <td width="47" height="35" align="center" id="1-89">89</td>
    <td width="46" height="35" align="center" id="1-88">88</td>
    <td width="21" height="35" align="center"></td>
  </tr>
  <tr>
    <td width="37" height="78" align="center"></td>
    <td width="44" height="78" align="center"></td>
    <td width="47" height="78" align="center"></td>
    <td width="48" height="78" align="center"></td>
    <td width="47" height="78" align="center"></td>
    <td width="48" height="78" align="center"></td>
    <td width="44" height="78" align="center"></td>
    <td width="27" height="78" align="center"></td>
    <td width="46" height="78" align="center"></td>
    <td width="47" height="78" align="center"></td>
    <td width="48" height="78" align="center"></td>
    <td width="48" height="78" align="center"></td>
    <td width="47" height="78" align="center"></td>
    <td width="46" height="78" align="center"></td>
    <td width="21" height="78" align="center"></td>
  </tr>
</tbody></table>


</body>
</html>